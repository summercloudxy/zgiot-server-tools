package com.zgiot.kepserver.service;

import com.alibaba.fastjson.JSON;
import com.zgiot.ServerToolsApplication;
import com.zgiot.common.exceptions.SysException;
import com.zgiot.kepserver.dao.ChannelDao;
import com.zgiot.kepserver.pojo.*;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.*;
import java.lang.reflect.Field;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;


@Service
public class KepJsonService {
    @Autowired
    private ChannelDao channelDao;

    public List<Channel> findAllChannels(String profile) {
        return channelDao.findAllChannels(profile);
    }

    public JsonFile getDataLogger(String profile) {
        JsonFile json;
        InputStream inputStream = null;
        String[] split = profile.split("-");
        try {
            inputStream = ServerToolsApplication.class.getClassLoader().getResourceAsStream("datalogger-"+split[1]+".json");
            json = JSON.parseObject(inputStream, JsonFile.class);
        } catch (IOException e) {
            throw new SysException("解析datalogger配置出错", SysException.EC_UNKNOWN);
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return json;
    }


    public ExcelData disposeDBExcel(String filePath, String profile) throws Exception {
        ExcelData excelData = readDBExcel(filePath);
        List<Label> labels = excelData.getLabels();
        List<Tag> tags = excelData.getTags();
        updateLabelData(profile, labels);
        updateTagData(profile, tags);
        //old
//        List<TabSignal> tabSignalList = excelData.getTabSignals();
//        updateTabSignal(tabSignalList);
        return constructChannel(profile, excelData);
    }


    public ExcelData constructChannel(String profile, ExcelData excelData) {
        List<Tag> tagList = excelData.getTags();
        List<Channel> resultChannels = new ArrayList<>();
        List<Channel> allChannelsWithoutTags = channelDao.findAllChannelsWithoutTags(profile);
        Map<String, Map<String, List<Tag>>> tagDeviceChannelMap = new HashMap<>();
        for (Tag tag : tagList) {
            String channelName = tag.getChannelName();
            String deviceName = tag.getDeviceName();
            if (tagDeviceChannelMap.containsKey(channelName)) {
                Map<String, List<Tag>> tagDeviceMap = tagDeviceChannelMap.get(channelName);
                if (tagDeviceMap.containsKey(deviceName)) {
                    List<Tag> tags = tagDeviceMap.get(deviceName);
                    tags.add(tag);
                } else {
                    List<Tag> tags = new ArrayList<>();
                    tags.add(tag);
                    tagDeviceMap.put(deviceName, tags);
                }
            } else {
                Map<String, List<Tag>> tagDeviceMap = new HashMap<>();
                List<Tag> tags = new ArrayList<>();
                tags.add(tag);
                tagDeviceMap.put(deviceName, tags);
                tagDeviceChannelMap.put(channelName, tagDeviceMap);
            }
        }
        for (Channel channel : allChannelsWithoutTags) {
            List<Device> deviceList = channel.getDeviceList();
            for (Device device : deviceList) {
                if (tagDeviceChannelMap.containsKey(channel.getName())) {
                    Map<String, List<Tag>> tagDeviceMap = tagDeviceChannelMap.get(channel.getName());
                    if (tagDeviceMap.containsKey(device.getName())) {
                        List<Tag> tags = tagDeviceMap.get(device.getName());
                        device.setTags(tags);
                    } else {
                        device.setTags(null);
                    }
                } else {
                    channel.setDeviceList(null);
                }
            }
        }
        for (Channel channel : allChannelsWithoutTags) {
            if (channel.getDeviceList() != null) {
                resultChannels.add(channel);
            }
        }
        excelData.setChannels(resultChannels);
        return excelData;
    }

    /**
     * 更新数据库中数据
     *
     * @param profile
     * @param labelList
     */
    public void updateLabelData(String profile, List<Label> labelList) {
        Map<String, Label> metricCodeAndName = channelDao.getMetricCodeAndName();
        for (Label label : labelList) {
            try {
                if (label.getMetricCode() == null || "".equals(label.getMetricCode())) {
                    label.setMetricCode(metricCodeAndName.get(label.getMetricName()).getMetricCode());
                }
            }catch(Exception e){
                e.printStackTrace();
            }
        }
        channelDao.delLabels();
        channelDao.insertLabelRecords(labelList);
    }

    public void updateTagData(String profile, List<Tag> tagList) {
        channelDao.delProfileTags(profile);
        channelDao.insertTagRecords(tagList, profile);
    }

    public void updateTabSignal(List<TabSignal> tabSignals) {
        Map<String, TabSignal> deviceIdAndCode = channelDao.getDeviceIdAndCode();
        for(TabSignal tabSignal:tabSignals){
            if(deviceIdAndCode.containsKey(tabSignal.getDeviceCode())){
                tabSignal.setDeviceId(deviceIdAndCode.get(tabSignal.getDeviceCode()).getDeviceId());
            }
        }
        channelDao.delTabSignal();
        channelDao.insertTabSignal(tabSignals);
    }


    public ExcelData readDBExcel(String filePath) throws Exception {
        File file = new File(filePath);
        OPCPackage opcPackage = OPCPackage.open(file);
        XSSFWorkbook workbook = new XSSFWorkbook(opcPackage);
        List<Tag> tagList = new ArrayList<>();
        List<Label> labelList = new ArrayList<>();
        //old
        List<TabSignal> tabSignalList = new ArrayList<>();
        Map<String, Integer> columnMap = new HashMap<>();
        for (int i = 0; i < workbook.getNumberOfSheets(); i++) {
            XSSFSheet sheet = workbook.getSheetAt(i);
            columnMap.clear();
            if (sheet.getSheetName().startsWith("点表")) {
                XSSFRow firstRow = sheet.getRow(sheet.getFirstRowNum());
                for (int m = 0; m < firstRow.getLastCellNum(); m++) {
                    columnMap.put(firstRow.getCell(m).getStringCellValue(), m);
                }
                for (int j = 1; j <= sheet.getLastRowNum(); j++) {
                    XSSFRow row = sheet.getRow(j);
                    Tag tag = getObjectFromRow(columnMap, Tag.class, row);
                    Label label = getObjectFromRow(columnMap, Label.class, row);

                    tagList.add(tag);
                    labelList.add(label);
                    //old
                    if (!sheet.getSheetName().contains("modbus")) {
                        TabSignal tabSignal = getObjectFromRow(columnMap, TabSignal.class, row);
                        tabSignalList.add(tabSignal);
                    }
                }
            }
        }
        workbook.close();
        ExcelData excelData = new ExcelData(tagList, labelList);
        excelData.setTabSignals(tabSignalList);
        return excelData;
    }

    /**
     * 从每一行记录中获取对象
     *
     * @param columnNameMap 每一列的名称与位置关系
     * @param clazz         对象类型
     * @param row           记录
     * @param <T>
     * @return
     * @throws IllegalAccessException
     * @throws InstantiationException
     */
    private <T> T getObjectFromRow(Map<String, Integer> columnNameMap, Class<T> clazz, XSSFRow row) throws IllegalAccessException, InstantiationException {
        T object = clazz.newInstance();
        Field[] fields = clazz.getDeclaredFields();
        for (Field field : fields) {
            String fieldName = field.getName();
            if (columnNameMap.containsKey(fieldName)) {
                int fieldIndex = columnNameMap.get(fieldName);
                field.setAccessible(true);
                XSSFCell cell = row.getCell(fieldIndex);
                Class type = field.getType();
                try {
                    if (Integer.class.equals(type)) {
                        field.set(object, (int) cell.getNumericCellValue());
                    } else if (Double.class.equals(type)) {
                        field.set(object, cell.getNumericCellValue());
                    } else if (Short.class.equals(type)) {
                        if (cell.getCellType() == Cell.CELL_TYPE_STRING) {
                            if (!"".equals(cell.getStringCellValue())) {
                                field.set(object, Short.parseShort(cell.getStringCellValue()));
                            }
                        } else {
                            field.set(object, (short) cell.getNumericCellValue());
                        }
                    } else if (Long.class.equals(type)) {
                        field.set(object, (long) cell.getNumericCellValue());
                    } else if (type.equals(String.class)) {
                        if (cell.getCellType() == Cell.CELL_TYPE_STRING) {
                            field.set(object, cell.getStringCellValue());
                        } else if (cell.getCellType() == Cell.CELL_TYPE_NUMERIC) {
                            field.set(object, String.valueOf((int) cell.getNumericCellValue()));
                        } else if (cell.getCellType() == Cell.CELL_TYPE_FORMULA) {
                            if (cell.getCachedFormulaResultType() == Cell.CELL_TYPE_NUMERIC) {
                                field.set(object, String.valueOf((int) cell.getNumericCellValue()));
                            } else if (cell.getCachedFormulaResultType() == Cell.CELL_TYPE_STRING) {
                                field.set(object, cell.getStringCellValue());
                            }
                        }
                    } else if (type.equals(Date.class)) {
                        field.set(object, cell.getDateCellValue());
                    } else if (type.equals(Boolean.class)) {
                        field.set(object, cell.getBooleanCellValue());
                    }
                } catch (Exception e) {
                    System.out.println(cell);
                }
            }
        }
        return object;
    }

    public String generateTMLSql(List<Label> labelList, String profile, String filePath ,String generateTime) {
        String fileName = "V1_0_" + generateTime +"__tml_update_DML-" + profile + ".sql";
        Path path = Paths.get(filePath, fileName);
        try (BufferedWriter bufferedWriter = Files.newBufferedWriter(path)) {
            bufferedWriter.write("truncate rel_thing_metric_label ;");
            for (Label label : labelList) {
                bufferedWriter.newLine();
                bufferedWriter.write("insert into rel_thing_metric_label (thing_code,metric_code,label_path,enabled,bool_reverse) values ");
                bufferedWriter.write(label.toString());
                bufferedWriter.write(";");
            }
        } catch (Exception e) {
            throw new SysException("输出tml错误", SysException.EC_UNKNOWN);
        }
        return fileName;
    }

    public String generateTabSignalSql(List<TabSignal> tabSignalList, String profile, String filePath ,String generateTime) {
        String fileName = "V1_0_" + generateTime +"__tabsignal_update_DML-" + profile + ".sql";
        Path path = Paths.get(filePath, fileName);
        try (BufferedWriter bufferedWriter = Files.newBufferedWriter(path)) {
            bufferedWriter.write("truncate tab_signal ;");
            for (TabSignal tabSignal : tabSignalList) {
                bufferedWriter.newLine();
                bufferedWriter.write("insert into tab_signal (`deviceId`, `typeId`, `name`, `dataLabel`, `type`, `boolReal`, `enableCondition`,  `deviceCode`, `state`, `unit`, `channel`) VALUES ");
                bufferedWriter.write(tabSignal.toString());
                bufferedWriter.write(";");

            }
        } catch (Exception e) {
            throw new SysException("输出tabsignal错误", SysException.EC_UNKNOWN);
        }
        return fileName;
    }


}

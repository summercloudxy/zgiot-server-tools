package com.zgiot.kepserver.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.zgiot.common.exceptions.SysException;
import com.zgiot.common.restcontroller.ServerResponse;
import com.zgiot.kepserver.pojo.ExcelData;
import com.zgiot.kepserver.pojo.JsonFile;
import com.zgiot.kepserver.pojo.Project;
import com.zgiot.kepserver.service.KepJsonService;
import com.zgiot.util.FtpUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;

import static java.nio.charset.StandardCharsets.UTF_8;


@RestController()
@RequestMapping(value = "/kepserver")
public class KepJsonController {
    @Autowired
    private KepJsonService service;
    @Value("${kep.file.output.path}")
    private String defaultFilePath;
    @Value("${ftp.hostname}")
    private String hostName;
    @Value("${ftp.username}")
    private String username;
    @Value("${ftp.password}")
    private String password;
    @Value("${kep.file.upload.path}")
    private String kepUploadPath;
    @Value("${tml.file.upload.path}")
    private String tmlUploadPath;
    @Value("${signal.file.upload.path}")
    private String tabSignalUploadPath;

    @RequestMapping(value = "/generate", method = RequestMethod.GET)
    public ResponseEntity<String> generateKepJson(@RequestParam String profile, @RequestParam String excelPath, @RequestParam(required = false) String outputPath, @RequestParam(required = false, defaultValue = "false") boolean isUpload) {
        String generateTime =  new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) ;
        String fileName =  generateTime + "-" + profile  +".json";
        if (outputPath == null) {
            outputPath = defaultFilePath;
        }
        Path path = Paths.get(outputPath);
        if (!Files.exists(path)) {
            try {
                Files.createDirectories(path);
            } catch (IOException e) {
                throw new SysException("路径创建失败", SysException.EC_UNKNOWN);
            }
        }
        Path jsonPath = Paths.get(outputPath, fileName);
//        JsonFile jsonFileContainDataLogger = service.getDataLogger(profile);
        JsonFile jsonFileContainDataLogger = new JsonFile();
        Project project = new Project();
        jsonFileContainDataLogger.setProject(project);
        ExcelData excelData;
        try {
            excelData = service.disposeDBExcel(excelPath, profile);
        } catch (Exception e) {
            e.printStackTrace();
            throw new SysException("解析excel文件错误", SysException.EC_UNKNOWN);
        }
//        Project project = jsonFileContainDataLogger.getProject();
        project.setChannels(excelData.getChannels());
        try (FileOutputStream fileOutputStream = new FileOutputStream(jsonPath.toFile())) {
            JSON.writeJSONString(fileOutputStream, UTF_8, jsonFileContainDataLogger, SerializerFeature.PrettyFormat);
        } catch (IOException e) {
            throw new SysException("输出文件错误", SysException.EC_UNKNOWN);
        }
        String tmlName = service.generateTMLSql(excelData.getLabels(), profile, outputPath, generateTime);
        Path tmlPath = Paths.get(outputPath,tmlName);
//        String tabSignalName = service.generateTabSignalSql(excelData.getTabSignals(), profile, outputPath, generateTime);
//        Path tabSignalPath = Paths.get(outputPath,tabSignalName);
        if (isUpload) {
            try (InputStream inputStream = new FileInputStream(jsonPath.toFile())) {
                FtpUtil.uploadFile(hostName, username, password, kepUploadPath, fileName, inputStream);
            } catch (IOException e) {
                throw new SysException("上传json文件至ftp服务器错误", SysException.EC_UNKNOWN);
            }
            try (InputStream inputStream = new FileInputStream(tmlPath.toFile())) {
                FtpUtil.uploadFile(hostName, username, password, tmlUploadPath, tmlName, inputStream);
            } catch (IOException e) {
                throw new SysException("上传tml文件至ftp服务器错误", SysException.EC_UNKNOWN);
            }
//            try (InputStream inputStream = new FileInputStream(tabSignalPath.toFile())) {
//                FtpUtil.uploadFile(hostName, username, password, tabSignalUploadPath, tabSignalName, inputStream);
//            } catch (IOException e) {
//                throw new SysException("上传signal文件至ftp服务器错误", SysException.EC_UNKNOWN);
//            }
        }
        return new ResponseEntity<>(ServerResponse.buildOkJson(null), HttpStatus.OK);
    }

    @RequestMapping("delete")
    public void delete(String fileName) {
        FtpUtil.deleteFileFtp(hostName, username, password, kepUploadPath, fileName);
    }



}

package com.zgiot.kepserver.service;

import com.alibaba.fastjson.JSON;
import com.zgiot.ServerToolsApplication;
import com.zgiot.common.exceptions.SysException;
import com.zgiot.kepserver.dao.ChannelDao;
import com.zgiot.kepserver.pojo.Channel;
import com.zgiot.kepserver.pojo.JsonFile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.*;
import java.util.List;


@Service
public class KepJsonService {
    @Autowired
    private ChannelDao channelDao;

    public List<Channel> findAllChannels(String profile) {
        return channelDao.findAllChannels(profile);
    }

    public JsonFile getDataLogger() {
        JsonFile json;
        InputStream inputStream =null;
        try {
            inputStream = ServerToolsApplication.class.getClassLoader().getResourceAsStream("datalogger.json");
            json = JSON.parseObject(inputStream, JsonFile.class);
        } catch (IOException e) {
            throw new SysException("解析datalogger配置出错",SysException.EC_UNKNOWN);
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

}

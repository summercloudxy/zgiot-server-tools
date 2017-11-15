package com.zgiot.kepserver.controller;

import com.alibaba.fastjson.JSON;
import com.zgiot.common.exceptions.SysException;
import com.zgiot.common.restcontroller.ServerResponse;
import com.zgiot.kepserver.pojo.Channel;
import com.zgiot.kepserver.pojo.JsonFile;
import com.zgiot.kepserver.pojo.Project;
import com.zgiot.kepserver.service.KepJsonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.io.*;
import java.util.List;

import static java.nio.charset.StandardCharsets.UTF_8;


@RestController()
@RequestMapping(value = "/kepserver")
public class KepJsonController {

    @Autowired
    private KepJsonService service;
    @Value("${file.path}")
    private String defaultFilePath;

    @RequestMapping(value = "/generate", method = RequestMethod.GET)
    public ResponseEntity<String> generateKepJson(@RequestParam String profile,@RequestParam(required = false) String filePath) {

        if(filePath == null){
            filePath = defaultFilePath;
        }
        JsonFile jsonFileContainDataLogger = service.getDataLogger();
        List<Channel> allChannels = service.findAllChannels(profile);
        Project project = jsonFileContainDataLogger.getProject();
        project.setChannels(allChannels);
        try (FileOutputStream fileOutputStream = new FileOutputStream(new File(filePath))) {
            JSON.writeJSONString(fileOutputStream,UTF_8,jsonFileContainDataLogger);
        } catch (IOException e) {
            throw new SysException("输出文件错误",SysException.EC_UNKNOWN);
        }
        return new ResponseEntity<>(ServerResponse.buildOkJson(null), HttpStatus.OK);
    }

}

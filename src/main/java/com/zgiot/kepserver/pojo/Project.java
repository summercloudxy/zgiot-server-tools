package com.zgiot.kepserver.pojo;

import com.alibaba.fastjson.annotation.JSONField;

import java.util.List;

/**
 * Created by xiayun on 2017/7/5.
 */
public class Project {

    @JSONField(ordinal = 0,name = "channels")
    private List<Channel> channels;
    @JSONField(ordinal = 1,name = "_datalogger")
    private List<DataLogger> datalogger;


    public List<Channel> getChannels() {
        return channels;
    }

    public void setChannels(List<Channel> channels) {
        this.channels = channels;
    }

    public List<DataLogger> getDatalogger() {
        return datalogger;
    }

    public void setDatalogger(List<DataLogger> datalogger) {
        this.datalogger = datalogger;
    }
}

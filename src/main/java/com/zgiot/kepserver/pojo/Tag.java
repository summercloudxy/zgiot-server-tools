package com.zgiot.kepserver.pojo;

import com.alibaba.fastjson.annotation.JSONField;

public class Tag {

    @JSONField(name = "common.ALLTYPES_NAME")
    private String tagName;
    @JSONField(name = "common.ALLTYPES_DESCRIPTION")
    private String description;
    @JSONField(name = "servermain.TAG_ADDRESS")
    private String address;
    @JSONField(name = "servermain.TAG_DATA_TYPE")
    private Integer dataType; // bool 1 short 4  float 8
    @JSONField(name = "servermain.TAG_READ_WRITE_ACCESS")
    private Integer readWriteAccess=1;
    @JSONField(name = "servermain.TAG_SCAN_RATE_MILLISECONDS")
    private Integer scanRate=1000;
    @JSONField(serialize = false)
    private String channelName;
    @JSONField(serialize = false)
    private String deviceName;

    public String getTagName() {
        return tagName;
    }

    public void setTagName(String tagName) {
        this.tagName = tagName;
    }

    public String getChannelName() {
        return channelName;
    }

    public void setChannelName(String channelName) {
        this.channelName = channelName;
    }

    public String getDeviceName() {
        return deviceName;
    }

    public void setDeviceName(String deviceName) {
        this.deviceName = deviceName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getDataType() {
        return dataType;
    }

    public void setDataType(Integer dataType) {
        this.dataType = dataType;
    }

    public Integer getReadWriteAccess() {
        return readWriteAccess;
    }

    public void setReadWriteAccess(Integer readWriteAccess) {
        this.readWriteAccess = readWriteAccess;
    }

    public Integer getScanRate() {
        return scanRate;
    }

    public void setScanRate(Integer scanRate) {
        this.scanRate = scanRate;
    }
}

package com.zgiot.kepserver.pojo;

import com.alibaba.fastjson.annotation.JSONField;

public class Tag {

    @JSONField(name = "common.ALLTYPES_NAME")
    private String name;
    @JSONField(name = "common.ALLTYPES_DESCRIPTION")
    private String description;
    @JSONField(name = "servermain.TAG_ADDRESS")
    private String address;
    @JSONField(name = "servermain.TAG_DATA_TYPE")
    private Integer dataType; // bool 1 short 4  float 8
    @JSONField(name = "servermain.TAG_READ_WRITE_ACCESS")
    private Integer readWriteAccess=1;
    @JSONField(name = "servermain.TAG_SCAN_RATE_MILLISECONDS")
    private Integer scanRate=100;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

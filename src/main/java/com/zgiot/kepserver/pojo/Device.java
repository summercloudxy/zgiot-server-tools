package com.zgiot.kepserver.pojo;

import com.alibaba.fastjson.annotation.JSONField;

import java.util.List;

/**
 * Created by xiayun on 2017/7/5.
 */
public class Device {
    @JSONField(ordinal = 0,name = "common.ALLTYPES_NAME")
    private String name;
    @JSONField(ordinal = 1,name = "common.ALLTYPES_DESCRIPTION")
    private String description;
    @JSONField(ordinal = 2,name = "servermain.MULTIPLE_TYPES_DEVICE_DRIVER")
    private String driver;
    @JSONField(ordinal = 3,name = "servermain.DEVICE_MODEL")
    private Integer model;
    @JSONField(ordinal = 4,name = "servermain.DEVICE_ID_STRING")
    private String ip;
    @JSONField(ordinal = 5,name = "servermain.DEVICE_SCAN_MODE")
    private Integer scanMode;
    @JSONField(ordinal = 6,name = "servermain.DEVICE_SCAN_MODE_RATE_MS")
    private Integer scanRate;
    @JSONField(ordinal = 7,name = "controllogix_ethernet.DEVICE_PORT_NUMBER")
    private Integer portNumber;
    @JSONField(ordinal = 8,name = "modbus_ethernet.DEVICE_ETHERNET_PORT_NUMBER")
    private Integer modbusPortNumber;
    @JSONField(ordinal = 9,name = "tags")
    private List<Tag> tags;

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

    public String getDriver() {
        return driver;
    }

    public void setDriver(String driver) {
        this.driver = driver;
    }

    public Integer getModel() {
        return model;
    }

    public void setModel(Integer model) {
        this.model = model;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public Integer getScanMode() {
        return scanMode;
    }

    public void setScanMode(Integer scanMode) {
        this.scanMode = scanMode;
    }

    public Integer getScanRate() {
        return scanRate;
    }

    public void setScanRate(Integer scanRate) {
        this.scanRate = scanRate;
    }

    public Integer getPortNumber() {
        return portNumber;
    }

    public void setPortNumber(Integer portNumber) {
        this.portNumber = portNumber;
    }

    public Integer getModbusPortNumber() {
        return modbusPortNumber;
    }

    public void setModbusPortNumber(Integer modbusPortNumber) {
        this.modbusPortNumber = modbusPortNumber;
    }

    public List<Tag> getTags() {
        return tags;
    }

    public void setTags(List<Tag> tags) {
        this.tags = tags;
    }
}

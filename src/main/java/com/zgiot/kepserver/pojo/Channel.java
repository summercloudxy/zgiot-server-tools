package com.zgiot.kepserver.pojo;

import com.alibaba.fastjson.annotation.JSONField;

import java.util.List;

/**
 * Created by xiayun on 2017/7/5.
 */
public class Channel {
    @JSONField(ordinal = 0,name = "common.ALLTYPES_NAME")
    private String name;
    @JSONField(ordinal = 1,name = "common.ALLTYPES_DESCRIPTION")
    private String description;
    @JSONField(ordinal = 2,name = "servermain.MULTIPLE_TYPES_DEVICE_DRIVER")
    private String multipleTypesDeviceDriver;
    @JSONField(ordinal = 3,name = "servermain.CHANNEL_ETHERNET_COMMUNICATIONS_NETWORK_ADAPTER_STRING")
    private String networkAdapter;
    @JSONField(ordinal = 4,name = "modbus_ethernet.CHANNEL_ETHERNET_PORT_NUMBER")
    private Integer modbusPortNumber;
    @JSONField(ordinal = 5,name = "modbus_ethernet.CHANNEL_ETHERNET_PROTOCOL")
    private Short modbusProtocol;
    @JSONField(ordinal = 6,name = "modbus_ethernet.CHANNEL_MAXIMUM_SOCKETS_PER_DEVICE")
    private Short modbusMaxSockets;
    @JSONField(ordinal = 7,name = "modbus_ethernet.CHANNEL_USE_ONE_OR_MORE_SOCKETS_PER_DEVICE")
    private Short modbusOneOrMoreSockets;
    @JSONField(ordinal = 8,name = "devices")
    private List<Device> deviceList;

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

    public String getMultipleTypesDeviceDriver() {
        return multipleTypesDeviceDriver;
    }

    public void setMultipleTypesDeviceDriver(String multipleTypesDeviceDriver) {
        this.multipleTypesDeviceDriver = multipleTypesDeviceDriver;
    }

    public String getNetworkAdapter() {
        return networkAdapter;
    }

    public void setNetworkAdapter(String networkAdapter) {
        this.networkAdapter = networkAdapter;
    }

    public Integer getModbusPortNumber() {
        return modbusPortNumber;
    }

    public void setModbusPortNumber(Integer modbusPortNumber) {
        this.modbusPortNumber = modbusPortNumber;
    }

    public Short getModbusProtocol() {
        return modbusProtocol;
    }

    public void setModbusProtocol(Short modbusProtocol) {
        this.modbusProtocol = modbusProtocol;
    }

    public Short getModbusMaxSockets() {
        return modbusMaxSockets;
    }

    public void setModbusMaxSockets(Short modbusMaxSockets) {
        this.modbusMaxSockets = modbusMaxSockets;
    }

    public Short getModbusOneOrMoreSockets() {
        return modbusOneOrMoreSockets;
    }

    public void setModbusOneOrMoreSockets(Short modbusOneOrMoreSockets) {
        this.modbusOneOrMoreSockets = modbusOneOrMoreSockets;
    }

    public List<Device> getDeviceList() {
        return deviceList;
    }

    public void setDeviceList(List<Device> deviceList) {
        this.deviceList = deviceList;
    }
}

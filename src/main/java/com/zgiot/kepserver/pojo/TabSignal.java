package com.zgiot.kepserver.pojo;

public class TabSignal {
    private Short typeId;
    private Short name;
    private String dataLabel;
    private Short type;
    private Short boolReal;
    private Short enableCondition=1;
    private String deviceCode;
    private Short state;
    private String channel;
    private String unit;
    private String deviceId;

    public String getUnit() {
        return unit;
    }

    public String getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(String deviceId) {
        this.deviceId = deviceId;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public Short getTypeId() {
        return typeId;
    }

    public void setTypeId(Short typeId) {
        this.typeId = typeId;
    }

    public Short getName() {
        return name;
    }

    public void setName(Short name) {
        this.name = name;
    }

    public String getDataLabel() {
        return dataLabel;
    }

    public void setDataLabel(String dataLabel) {
        this.dataLabel = dataLabel;
    }

    public Short getType() {
        return type;
    }

    public void setType(Short type) {
        this.type = type;
    }

    public Short getBoolReal() {
        return boolReal;
    }

    public void setBoolReal(Short boolReal) {
        this.boolReal = boolReal;
    }

    public Short getEnableCondition() {
        return enableCondition;
    }

    public void setEnableCondition(Short enableCondition) {
        this.enableCondition = enableCondition;
    }

    public String getDeviceCode() {
        return deviceCode;
    }

    public void setDeviceCode(String deviceCode) {
        this.deviceCode = deviceCode;
    }

    public Short getState() {
        return state;
    }

    public void setState(Short state) {
        this.state = state;
    }

    public String getChannel() {
        return channel;
    }

    public void setChannel(String channel) {
        this.channel = channel;
    }

    @Override
    public String toString() {
        return
                "(" +
                        (deviceId == null ? "NULL" : ("'" + deviceId + "'")) +
                        "," + (typeId == null ? "NULL":("'" + typeId + "'")  ) +
                        "," + (name == null ?  "NULL":("'" + name + "'") ) +
                        "," + (dataLabel == null ?  "NULL":("'" + dataLabel + "'") ) +
                        "," + (type == null ? "NULL": ("'" + type + "'") ) +
                        "," + (boolReal == null ?"NULL" :("'" + boolReal + "'")  ) +
                        "," + (enableCondition == null ? "NULL":("'" + enableCondition + "'")  ) +
                        "," + (deviceCode == null ? "NULL": ("'" + deviceCode + "'") ) +
                        "," + (state == null ? "NULL":("'" + state + "'")  ) +
                        "," + (unit == null ?  "NULL":("'" + unit + "'") ) +
                        "," + (channel == null ?  "NULL" :("'" + channel + "'") ) +
                        ")";


    }
}


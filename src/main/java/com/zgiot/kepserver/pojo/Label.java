package com.zgiot.kepserver.pojo;


public class Label {
    private Long id;
    private String metricName;
    private String thingCode;
    private String metricCode;
    private String labelPath;
    private Long enabled;
    private Long boolReverse=0L;

    public String getMetricName() {
        return metricName;
    }

    public void setMetricName(String metricName) {
        this.metricName = metricName;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return
                "(" +
                        (thingCode == null ? "NULL":("'" + thingCode + "'")  ) +
                        "," + (metricCode == null ? "NULL":("'" + metricCode + "'")  ) +
                        "," + (labelPath == null ? "NULL":("'" + labelPath + "'")  ) +
                        "," + (enabled == null ?  "NULL":("'" + enabled + "'") ) +
                        "," + (boolReverse == null ?  "NULL" :("'" + boolReverse + "'") ) +
                        ")";
    }

    public String getThingCode() {
        return thingCode;
    }

    public void setThingCode(String thingCode) {
        this.thingCode = thingCode;
    }

    public String getMetricCode() {
        return metricCode;
    }

    public void setMetricCode(String metricCode) {
        this.metricCode = metricCode;
    }

    public String getLabelPath() {
        return labelPath;
    }

    public void setLabelPath(String labelPath) {
        this.labelPath = labelPath;
    }

    public Long getEnabled() {
        return enabled;
    }

    public void setEnabled(Long enabled) {
        this.enabled = enabled;
    }

    public Long getBoolReverse() {
        return boolReverse;
    }

    public void setBoolReverse(Long boolReverse) {
        this.boolReverse = boolReverse;
    }
}


package com.zgiot.kepserver.pojo;

import com.alibaba.fastjson.annotation.JSONField;

import java.util.List;


public class DataLogger {

    @JSONField(ordinal = 1,name = "common.ALLTYPES_DESCRIPTION")
    private String mCommonALLTYPESDESCRIPTION;
    @JSONField(ordinal = 2,name = "common.ALLTYPES_HASHED_LEGACY_BLOB")
    private List<Long> mCommonALLTYPESHASHEDLEGACYBLOB;
    @JSONField(ordinal = 0,name = "common.ALLTYPES_NAME")
    private String mCommonALLTYPESNAME;
    @JSONField(ordinal = 3,name = "log_groups")
    private List<LogGroup> logGroups;

    public String getmCommonALLTYPESDESCRIPTION() {
        return mCommonALLTYPESDESCRIPTION;
    }

    public void setmCommonALLTYPESDESCRIPTION(String mCommonALLTYPESDESCRIPTION) {
        this.mCommonALLTYPESDESCRIPTION = mCommonALLTYPESDESCRIPTION;
    }

    public List<Long> getmCommonALLTYPESHASHEDLEGACYBLOB() {
        return mCommonALLTYPESHASHEDLEGACYBLOB;
    }

    public void setmCommonALLTYPESHASHEDLEGACYBLOB(List<Long> mCommonALLTYPESHASHEDLEGACYBLOB) {
        this.mCommonALLTYPESHASHEDLEGACYBLOB = mCommonALLTYPESHASHEDLEGACYBLOB;
    }

    public String getmCommonALLTYPESNAME() {
        return mCommonALLTYPESNAME;
    }

    public void setmCommonALLTYPESNAME(String mCommonALLTYPESNAME) {
        this.mCommonALLTYPESNAME = mCommonALLTYPESNAME;
    }

    public List<LogGroup> getLogGroups() {
        return logGroups;
    }

    public void setLogGroups(List<LogGroup> logGroups) {
        this.logGroups = logGroups;
    }
}


package com.zgiot.kepserver.pojo;

import com.alibaba.fastjson.annotation.JSONField;

import java.util.List;

public class Trigger {

    @JSONField(ordinal = 2,name = "common.ALLTYPES_DESCRIPTION")
    private String commonAllTypesDescription;
    @JSONField(ordinal = 1,name = "common.ALLTYPES_HASHED_LEGACY_BLOB")
    private List<Long> commonAllTypesHashedLegacyBlob;
    @JSONField(ordinal = 0,name = "common.ALLTYPES_NAME")
    private String commonAllTypesName;

    public String getCommonAllTypesDescription() {
        return commonAllTypesDescription;
    }

    public void setCommonAllTypesDescription(String commonAllTypesDescription) {
        this.commonAllTypesDescription = commonAllTypesDescription;
    }

    public List<Long> getCommonAllTypesHashedLegacyBlob() {
        return commonAllTypesHashedLegacyBlob;
    }

    public void setCommonAllTypesHashedLegacyBlob(List<Long> commonAllTypesHashedLegacyBlob) {
        this.commonAllTypesHashedLegacyBlob = commonAllTypesHashedLegacyBlob;
    }

    public String getCommonAllTypesName() {
        return commonAllTypesName;
    }

    public void setCommonAllTypesName(String commonAllTypesName) {
        this.commonAllTypesName = commonAllTypesName;
    }
}

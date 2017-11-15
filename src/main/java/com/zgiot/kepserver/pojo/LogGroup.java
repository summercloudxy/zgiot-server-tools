
package com.zgiot.kepserver.pojo;

import com.alibaba.fastjson.annotation.JSONField;

import java.util.List;


public class LogGroup {

    @JSONField(ordinal = 1,name = "common.ALLTYPES_DESCRIPTION")
    private String commonAllTypesDescription;
    @JSONField(ordinal = 2,name = "common.ALLTYPES_HASHED_LEGACY_BLOB")
    private List<Long> commonAllTypesHashedLegacyBlob;
    @JSONField(ordinal = 0,name = "common.ALLTYPES_NAME")
    private String commonAllTypesName;
    @JSONField(ordinal = 5,name = "log_items")
    private List<LogItem> logItems;
    @JSONField(ordinal = 3,name = "table_aliases")
    private List<TableAlias> tableAliases;
    @JSONField(ordinal = 4,name = "triggers")
    private List<Trigger> triggers;

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

    public List<LogItem> getLogItems() {
        return logItems;
    }

    public void setLogItems(List<LogItem> logItems) {
        this.logItems = logItems;
    }

    public List<TableAlias> getTableAliases() {
        return tableAliases;
    }

    public void setTableAliases(List<TableAlias> tableAliases) {
        this.tableAliases = tableAliases;
    }

    public List<Trigger> getTriggers() {
        return triggers;
    }

    public void setTriggers(List<Trigger> triggers) {
        this.triggers = triggers;
    }
}

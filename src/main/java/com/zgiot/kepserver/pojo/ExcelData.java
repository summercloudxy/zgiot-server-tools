package com.zgiot.kepserver.pojo;

import java.util.List;

public class ExcelData {
    private List<Tag> tags;
    private List<Label> labels;
    private List<Channel> channels;

    private List<TabSignal> tabSignals;

    public List<Channel> getChannels() {
        return channels;
    }

    public void setChannels(List<Channel> channels) {
        this.channels = channels;
    }

    public List<Tag> getTags() {
        return tags;
    }

    public void setTags(List<Tag> tags) {
        this.tags = tags;
    }

    public List<Label> getLabels() {
        return labels;
    }

    public void setLabels(List<Label> labels) {
        this.labels = labels;
    }

    public List<TabSignal> getTabSignals() {
        return tabSignals;
    }

    public void setTabSignals(List<TabSignal> tabSignals) {
        this.tabSignals = tabSignals;
    }

    public ExcelData() {
    }

    public ExcelData(List<Tag> tags, List<Label> labels) {
        this.tags = tags;
        this.labels = labels;
    }
}

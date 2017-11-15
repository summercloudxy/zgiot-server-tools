package com.zgiot.kepserver.pojo;

import com.alibaba.fastjson.annotation.JSONField;

public class JsonFile {

    @JSONField(name = "Project")
    private Project project;

    public Project getProject() {
        return project;
    }

    public void setProject(Project project) {
        this.project = project;
    }

    public JsonFile() {
    }

    public JsonFile(Project project) {

        this.project = project;
    }
}

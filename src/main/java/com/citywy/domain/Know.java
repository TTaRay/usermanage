package com.citywy.domain;


import java.util.Date;

public class Know {
    private int id;
    private String title;
    private String logo;
    private String summary;//简介
    private String tag;//标签
    private Date esave;
    private Date echg;
    private int state;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public Date getEsave() {
        return esave;
    }

    public void setEsave(Date esave) {
        this.esave = esave;
    }

    public Date getEchg() {
        return echg;
    }

    public void setEchg(Date echg) {
        this.echg = echg;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }
}

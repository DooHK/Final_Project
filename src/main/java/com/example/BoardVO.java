package com.example;

import java.util.Date;

public class BoardVO {
    private int seq;
    private String name;
    private String category;
    private String writer;
    private String area;
    private Date regdate;
    private int price;
    private String state;
    private int manner;

    public int getManner() {return manner;}
    public void setManner(int manner) {this.manner = manner;}
    public String getState() {return state;}
    public void setState(String state) {this.state = state;}
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getArea() {
        return area;
    }
    public void setArea(String area) {
        this.area = area;
    }
    public int getPrice() {return price;}
    public void setPrice(int price) {
        this.price = price;
    }
    public int getSeq() {
        return seq;
    }
    public void setSeq(int seq) {
        this.seq = seq;
    }
    public String getWriter() {
        return writer;
    }
    public void setWriter(String writer) {
        this.writer = writer;
    }
    public Date getRegdate() {
        return regdate;
    }
    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }
    public String getCategory() {
        return category;
    }
    public void setCategory(String category) {
        this.category = category;
    }
}
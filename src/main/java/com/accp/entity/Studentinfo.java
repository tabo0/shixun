package com.accp.entity;


public class Studentinfo {

    private long sid;
    private String sname;
    private String sgender;
    private long sage;
    private String saddress;
    private String semail;


    public long getSid() {
        return sid;
    }

    public void setSid(long sid) {
        this.sid = sid;
    }


    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }


    public String getSgender() {
        return sgender;
    }

    public void setSgender(String sgender) {
        this.sgender = sgender;
    }


    public long getSage() {
        return sage;
    }

    public void setSage(long sage) {
        this.sage = sage;
    }


    public String getSaddress() {
        return saddress;
    }

    public void setSaddress(String saddress) {
        this.saddress = saddress;
    }


    public String getSemail() {
        return semail;
    }

    public void setSemail(String semail) {
        this.semail = semail;
    }

}
package com.accp.entity;

public class Users {
    private Integer uid;
    private String uname;
    private String upass;
    private String udepartment;
    private String realname;
    private Integer roleid;
    public Users(){
        super();
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public void setUpass(String upass) {
        this.upass = upass;
    }

    public void setUdepartment(String udepartment) {
        this.udepartment = udepartment;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    public Integer getUid() {
        return uid;
    }

    public String getUname() {
        return uname;
    }

    public String getUpass() {
        return upass;
    }

    public String getUdepartment() {
        return udepartment;
    }

    public String getRealname() {
        return realname;
    }

    public Integer getRoleid() {
        return roleid;
    }
}

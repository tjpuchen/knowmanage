package com.km.db;

public class User {
    private String  uID;
    private String uName;
    private String uPassword;
    private int uAge;
    private String uSex;
    private String uPhone;
    private String uRole;
    private String udept;
    private String flag;

    public String getuID() {
        return uID;
    }

    public void setuID(String uID) {
        this.uID = uID;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public String getuPassword() {
        return uPassword;
    }

    public void setuPassword(String uPassword) {
        this.uPassword = uPassword;
    }

    public int getuAge() {
        return uAge;
    }

    public void setuAge(int uAge) {
        this.uAge = uAge;
    }

    public String getuSex() {
        return uSex;
    }

    public void setuSex(String uSex) {
        this.uSex = uSex;
    }

    public String getuRole() {
        return uRole;
    }

    public void setuRole(String uRole) {
        this.uRole = uRole;
    }

    public String getUdept() {
        return udept;
    }

    public void setUdept(String udept) {
        this.udept = udept;
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }

    public String getuPhone() {
        return uPhone;
    }

    public void setuPhone(String uPhone) {
        this.uPhone = uPhone;
    }

    public User(String uID, String uName, String uPassword, int uAge, String uSex, String uPhone, String uRole, String udept) {
        this.uID = uID;
        this.uName = uName;
        this.uPassword = uPassword;
        this.uAge = uAge;
        this.uSex = uSex;
        this.uPhone = uPhone;
        this.uRole = uRole;
        this.udept = udept;
    }

    public User() {
    }
}

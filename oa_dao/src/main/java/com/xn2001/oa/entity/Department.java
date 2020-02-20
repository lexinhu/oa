package com.xn2001.oa.entity;


/**
 * (Department)表实体类
 *
 * @author 乐心湖
 * @since 2020-02-20 00:54:26
 */

public class Department {
    
    private String sn;
    
    private String name;
    
    private String address;

    public String getSn() {
        return sn;
    }

    public void setSn(String sn) {
        this.sn = sn;
    }
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
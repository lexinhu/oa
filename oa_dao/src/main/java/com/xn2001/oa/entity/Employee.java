package com.xn2001.oa.entity;

import lombok.Data;

/**
 * (Employee)表实体类
 *
 * @author 乐心湖
 * @since 2020-02-20 00:54:41
 */
@Data
public class Employee{
    
    private String sn;
    
    private String password;
    
    private String name;
    
    private String departmentSn;
    
    private String post;

    private Department department;

}
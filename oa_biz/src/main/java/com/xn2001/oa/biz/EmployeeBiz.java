package com.xn2001.oa.biz;

import com.xn2001.oa.entity.Employee;

import java.util.List;

/**
 * Created by 乐心湖 on 2020/2/21 20:59
 */
public interface EmployeeBiz {

    void add(Employee employee);

    void edit(Employee employee);

    void remove(String sn);

    Employee get(String sn);

    List<Employee> getAll();

}

package com.xn2001.oa.biz.impl;

import com.xn2001.oa.biz.EmployeeBiz;
import com.xn2001.oa.dao.EmployeeDao;
import com.xn2001.oa.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 乐心湖 on 2020/2/21 21:01
 */
@Service
public class EmployeeBizImpl implements EmployeeBiz {

    @Autowired
    private EmployeeDao employeeDao;

    public void add(Employee employee) {
        employee.setPassword("000000");
        employeeDao.insert(employee);
    }

    @Override
    public void edit(Employee employee) {
        employeeDao.update(employee);
    }

    @Override
    public void remove(String sn) {
        employeeDao.delete(sn);
    }
    @Override
    public Employee get(String sn) {
        return employeeDao.select(sn);
    }
    @Override
    public List<Employee> getAll() {
        return employeeDao.selectAll();
    }

}

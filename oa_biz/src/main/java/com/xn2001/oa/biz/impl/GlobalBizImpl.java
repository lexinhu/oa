package com.xn2001.oa.biz.impl;

import com.xn2001.oa.biz.GlobalBiz;
import com.xn2001.oa.dao.EmployeeDao;
import com.xn2001.oa.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by 乐心湖 on 2020/2/22 23:10
 */
public class GlobalBizImpl implements GlobalBiz {

    @Autowired
    private EmployeeDao employeeDao;

    public Employee login(String sn, String password) {
        Employee employee = employeeDao.select(sn);
        if (employee == null && employee.getPassword().equals(password)) {
            return employee;
        }
        return null;
    }

    public void changePassword(Employee employee) {
        employeeDao.update(employee);
    }
}

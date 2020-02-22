package com.xn2001.oa.biz;

import com.xn2001.oa.entity.Employee;

/**
 * Created by 乐心湖 on 2020/2/22 23:07
 */
public interface GlobalBiz {
    Employee login(String sn,String password);
    void changePassword(Employee employee);
}

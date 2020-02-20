package com.xn2001.oa.biz;

import com.xn2001.oa.entity.Department;

import java.util.List;

/**
 * Created by 乐心湖 on 2020/2/20 12:01
 */

public interface DepartmentBiz {

    void add(Department department);

    void edit(Department department);

    void remove(String sn);

    Department get(String sn);

    List<Department> getAll();
}

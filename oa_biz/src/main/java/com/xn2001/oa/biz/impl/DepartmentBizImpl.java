package com.xn2001.oa.biz.impl;

import com.xn2001.oa.biz.DepartmentBiz;
import com.xn2001.oa.dao.DepartmentDao;
import com.xn2001.oa.entity.Department;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 乐心湖 on 2020/2/20 12:08
 */

@Service
public class DepartmentBizImpl implements DepartmentBiz {

    @Autowired
    private DepartmentDao departmentDao;

    @Override
    public void add(Department department) {
        departmentDao.insert(department);
    }
    @Override
    public void edit(Department department) {
        departmentDao.update(department);
    }
    @Override
    public void remove(String sn) {
        departmentDao.delete(sn);
    }
    @Override
    public Department get(String sn) {
        return departmentDao.select(sn);
    }
    @Override
    public List<Department> getAll() {
        return departmentDao.selectAll();
    }
}

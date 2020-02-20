package com.xn2001.oa.dao;

import com.xn2001.oa.entity.Department;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 乐心湖 on 2020/2/20 10:27
 */
@Repository
public interface DepartmentDao {

    void insert(Department department);

    void update(Department department);

    void delete(String sn);

    Department select(String sn);

    List<Department> selectAll();
}

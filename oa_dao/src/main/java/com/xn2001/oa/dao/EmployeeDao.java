package com.xn2001.oa.dao;

import com.xn2001.oa.entity.Employee;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 乐心湖 on 2020/2/21 13:28
 */
@Repository
public interface EmployeeDao {

    void insert(Employee employee);

    void update(Employee employee);

    void delete(String sn);

    Employee select(String sn);

    List<Employee> selectAll();

}

package com.xn2001.oa.controller;

import com.xn2001.oa.biz.DepartmentBiz;
import com.xn2001.oa.biz.EmployeeBiz;
import com.xn2001.oa.entity.Employee;
import com.xn2001.oa.global.Contant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * Created by 乐心湖 on 2020/2/21 23:00
 */
@Controller
@RequestMapping("employee")
public class EmployeeController {

    @Autowired
    private EmployeeBiz employeeBiz;
    @Autowired
    private DepartmentBiz departmentBiz;

    @GetMapping("/list")
    public String list(Map<String,Object> map){
        map.put("list",employeeBiz.getAll());
        return "employee_list";
    }

    @RequestMapping("/to_add")
    public String toAdd(Employee employee,Map<String,Object> map){
        map.put("employee",employee);
        map.put("dlist",departmentBiz.getAll());
        map.put("plist", Contant.getPosts());
        return "employee_add";
    }

    @PostMapping("/add")
    public String add(Employee employee){
        employeeBiz.add(employee);
        return "redirect:list";
    }

    @RequestMapping("/to_update/{sn}")
    public String toUpdate(@PathVariable("sn") String sn, Map<String,Object> map){
        map.put("employee",employeeBiz.get(sn));
        map.put("dlist",departmentBiz.getAll());
        map.put("plist", Contant.getPosts());
        return "employee_update";
    }

    @PutMapping("/update")
    public String update(Employee employee){
        employeeBiz.edit(employee);
        return "redirect:list";
    }

    @RequestMapping("/remove/{sn}")
    public String remove(@PathVariable String sn){
        employeeBiz.remove(sn);
        return "redirect:/employee/list";
    }
}

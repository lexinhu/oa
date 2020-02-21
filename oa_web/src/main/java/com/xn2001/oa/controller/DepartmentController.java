package com.xn2001.oa.controller;

import com.xn2001.oa.biz.DepartmentBiz;
import com.xn2001.oa.entity.Department;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * Created by 乐心湖 on 2020/2/20 12:13
 */
@Controller
@RequestMapping("/department")
public class DepartmentController {

    @Autowired
    private DepartmentBiz departmentBiz;

    @GetMapping("/list")
    public String list(Map<String,Object> map){
        map.put("list",departmentBiz.getAll());
        return "department_list";
    }

    @RequestMapping("/to_add")
    public String toAdd(){
        return "department_add";
    }

    @PostMapping("/add")
    public String add(Department department){
        departmentBiz.add(department);
        return "redirect:list";
    }

    @RequestMapping("/to_update/{sn}")
    public String toUpdate(@PathVariable("sn") String sn,Map<String,Object> map){
        map.put("department",departmentBiz.get(sn));
        return "department_update";
    }

    @PutMapping("/update")
    public String update(Department department){
        departmentBiz.edit(department);
        return "redirect:list";
    }

    @RequestMapping("/remove/{sn}")
    public String remove(@PathVariable String sn){
        departmentBiz.remove(sn);
        return "redirect:/department/list";
    }

}

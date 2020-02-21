package com.xn2001.oa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by 乐心湖 on 2020/2/21 13:07
 */
@RestController
public class Test {

    @RequestMapping("xxx.do")
    public String t(int id){
        return "name=" +id ;
    }
}

package com.xn2001.oa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by 乐心湖 on 2020/2/27 21:50
 */
@Controller
public class IndexController {
    @RequestMapping("/")
    public String index(){
        return "self";
    }
}

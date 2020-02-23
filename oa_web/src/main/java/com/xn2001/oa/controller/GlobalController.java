package com.xn2001.oa.controller;

import com.xn2001.oa.biz.GlobalBiz;
import com.xn2001.oa.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

/**
 * Created by 乐心湖 on 2020/2/22 23:21
 */
@Controller
public class GlobalController {

    @Autowired
    private GlobalBiz globalBiz;

    @RequestMapping("/to_login")
    public String toLogin() {
        return "login";
    }

    @RequestMapping("/login")
    public String login(HttpSession session, @RequestParam String sn, @RequestParam String password) {
        Employee employee = globalBiz.login(sn, password);
        if (employee == null) {
            return "redirect:to_login";
        }
        session.setAttribute("employee", employee);
        return "redirect:self";
    }

    @RequestMapping("/self")
    public String self() {
        return "self";
    }

    @RequestMapping("/quit")
    public String quit(HttpSession session) {
        session.setAttribute("employee", null);
        return "redirect:to_login";
    }

    @RequestMapping("/toChangePassword")
    public String toChangePassword() {
        return "change_password";
    }

    @RequestMapping("/change_Password")
    public String changePassword(HttpSession session, @RequestParam String old,
                                 @RequestParam String new1, @RequestParam String new2) {
        Employee employee = (Employee) session.getAttribute("employee");
        if (employee.getPassword().equals(old)) {
            if (new1.equals(new2)) {
                employee.setPassword(new1);
                globalBiz.changePassword(employee);
                return "redirect:self";
            }
        }
        return "redirect:toChangePassword";
    }
}


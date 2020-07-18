package com.zhao.controller;

/**
 * @author Zheng
 * @version 1.0
 * @date 2020/7/16 17:31
 */
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.zhao.pojo.User;
import com.zhao.service.LoginService;

import java.util.HashMap;
import java.util.Map;

@Controller
public class LoginController {

    @Autowired
    private LoginService LoginService;

    @RequestMapping(value = "/login")
    public String toLogin() {
        return "login";
    }
    /**
     * 登录验证
     */
    @RequestMapping(value = "/adminLogin")
    public String adminLogin(String username, String password, HttpSession httpSession, HttpServletRequest request) {
        Map<String,String> map = new HashMap<String,String>();
        map.put("username", username);
        map.put("password", password);
        User User = LoginService.selectUser(map);
        if(User != null) {
            httpSession.setAttribute("User", User);
            return "index";
        }else {
            request.setAttribute("Login_error", "账号密码错误，请重新输入!");
//			httpSession.setMaxInactiveInterval(1);   //设置该消息存在一秒，显示后下次访问页面即消失
            return "/login";
        }
    }
}

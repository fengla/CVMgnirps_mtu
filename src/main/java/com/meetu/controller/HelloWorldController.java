package com.meetu.controller;

import com.meetu.data.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

@Controller
public class HelloWorldController {

    @GetMapping("hello")
    public ModelAndView init(ModelMap modelMap){
        System.out.println("enter success");
        ModelAndView mv = new ModelAndView();

        User user = new User("ipv019", "17866616802", 25);
        //user.setRemark("测试remark!");
        modelMap.addAttribute("user", user);
        System.out.println(user);

        mv.addObject("user", "123456");
        mv.setViewName("userDetail");

        return mv;
    }

//    @GetMapping("hello")
//    public String init(ModelMap modelMap){
//        System.out.println("enter success 2");
//        User user = new User("ipv009", "17888816802", 25);
//        user.setRemark("测试remark!");
////        Map respect = new HashMap<String, String>();
////        respect.put("wwwwww","2018-03-08");
////        respect.put("qqqqq","2018-03-05");
////        user.setRespect(respect);
//        modelMap.addAttribute("user", user);
//        System.out.println(user);
//        return "userDetail";
//    }
}

package com.meetu.controller;

import com.meetu.data.Student;
import com.meetu.data.User;
import com.meetu.dto.UserDTO;
import com.meetu.service.UserService;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;

@Log4j
@Controller
public class UserController {

    @Autowired
    private UserService userService;
//    备用代码：
//    这个return ModelAndView也是springMVC的一种可行的return方式
//    @GetMapping("hello")
//    public ModelAndView init(ModelMap modelMap){
//        System.out.println("enter success");
//        ModelAndView mv = new ModelAndView();
//
//        User user = new User("ipv019", "17866616802", 25);
//        //user.setRemark("测试remark!");
//        modelMap.addAttribute("user", user);
//        System.out.println(user);
//
//        mv.addObject("user", user);
//        mv.setViewName("userDetail");
//
//        return mv;
//    }

    @GetMapping("/test")
    public String init(ModelMap modelMap){
        System.out.println("enter success 2");
        User user = new User("ipv009", "17888816802", 25);
        modelMap.addAttribute("user", user);
        System.out.println(user);
        return "userDetail";
    }

    @GetMapping("/login")
    public ModelAndView login(ModelMap modelMap){//ModelMap modelMap

        return new ModelAndView("login", "command", new UserDTO());
    }

    @PostMapping("/doLogin")
    public String doLogin(ModelMap modelMap, UserDTO user){//todo：这个modelMap需要吗？（猜想：因为前台展示的数据是存在modelMap中的，所以应该还是必须的。。。）
        log.warn("enter doLogin, user" + user);
        if(userService.checkValid(user)){
            UserDTO userDTO = userService.findUserDTOByEmail(user.getEmail());
            modelMap.addAttribute("user", userDTO);
           return "redirect:showActivities";//todo:暂时这么写，等首页写好了，这里改成跳转首页
            //原来这里因该将值设置到mpdelMap中，直接return String就可以了，而不是redirect:profile!!!
        }else{
            return "redirect:login";
        }
    }

    @GetMapping("/register")
    public ModelAndView register(){//ModelMap modelMap

        return new ModelAndView("register", "command", new UserDTO());
    }

    @PostMapping("/doRegister")
    public String doRegister(ModelMap modelMap, UserDTO user){//todo：这个modelMap需要吗？（猜想：因为前台展示的数据是存在modelMap中的，所以应该还是必须的。。。）
        //现在的问题是服务度啊没有接收到数据。。。如何处理？？？
        log.warn("enter doLogin, user" + user);
        if(userService.register(user)){
            return "redirect:login";
        }else{
            return "redirect:register";
        }
    }

    @GetMapping("/profile")
    public ModelAndView profile(ModelMap modelMap,UserDTO user){//ModelMap modelMap
        log.warn("enter profile, user:" + user);
        return new ModelAndView("profile", "command", user);
    }


}

package com.meetu.controller;

import com.meetu.data.User;
import com.meetu.dto.UserDTO;
import com.meetu.service.CommentService;
import com.meetu.service.UserService;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Log4j
@Controller
public class CommentController {

    @Autowired
    private CommentService commentService;

    @GetMapping("/showComments")
    public String profile(ModelMap modelMap, Long activityId){//ModelMap modelMap
        //todo???

        return null;
    }


}

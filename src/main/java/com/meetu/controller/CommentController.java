package com.meetu.controller;

import com.meetu.data.User;
import com.meetu.dto.CommentDTO;
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

import java.text.SimpleDateFormat;
import java.util.Date;

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


    @PostMapping("/putComment")
    public void putComment(ModelMap modelMap, Long userId, String content, Long activityId){

        //SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        Date updateTime = new Date();//获取当前系统时间
        CommentDTO commentDTO = new CommentDTO(content, activityId, userId, updateTime);

        commentService.save(commentDTO);
    }


}

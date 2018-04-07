package com.meetu.controller;

import com.meetu.data.Student;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.ModelMap;

@Controller
public class StudentController {

    @RequestMapping(value = "/student", method = RequestMethod.GET)
    public ModelAndView student() {
        System.out.println("enter Student");
        return new ModelAndView("student", "command", new Student());
    }

    //todo: 在此页面中刷新页面会重复提交表单，这该如何处理？
    @RequestMapping(value = "/addStudent", method = RequestMethod.POST)
    public String addStudent(@ModelAttribute Student student,
                             ModelMap model) {
        System.out.println("add Student:"+student.getName());

        model.addAttribute("name", student.getName());
        model.addAttribute("age", student.getAge());
        model.addAttribute("id", student.getId());

        return "result";
    }


//@RequestMapping(value = "/addStudent", method = RequestMethod.POST)
//public String addStudent(@RequestBody Student student,
//                         ModelMap model) {
////    model.addAttribute("name", student.getName());
////    model.addAttribute("age", student.getAge());
////    model.addAttribute("id", student.getId());
//    System.out.println(student.getName()+student.getAge()+student.getId());
//
//    return "result";
//}
}

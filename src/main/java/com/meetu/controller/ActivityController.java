package com.meetu.controller;

import com.meetu.dto.ActivityDTO;
import com.meetu.dto.CommentDTO;
import com.meetu.dto.UserDTO;
import com.meetu.service.ActivityService;
import com.meetu.service.CommentService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Slf4j
@Controller
public class ActivityController {

    @Autowired
    ServletContext context;//这是干吗的？还有其他什么方式实现文件上传吗？

    @Autowired
    private ActivityService activityService;

    @Autowired
    private CommentService commentService;


    @GetMapping("/launchActivity")
    public ModelAndView launchActivity(ModelMap modelMap, UserDTO user){
        return new ModelAndView("launchActivity", "command", new UserDTO());
    }

    @PostMapping("/doLaunchActivity")
    public String doLogin(ModelMap modelMap, @RequestParam("logoFile") MultipartFile file, ModelMap model, String name,
                          String date, String location, String charge, int chargeDetail, int sponsor, String details, String tips){//todo：这个modelMap需要吗？（猜想：因为前台展示的数据是存在modelMap中的，所以应该还是必须的。。。）
        ActivityDTO activityDTO;
        try {

            //todo: 2018-04-06
            //TODO: 怎么接收前端传来的数据呢？？？String name,String location看看这样能不能接收到数据呢？??
            //TODO:现在看来文件上传是没有问题了，就看看怎么提交表单？？？
            //todo: 搜索spriingBoot/springMVC提交表单
            log.warn("before+details:" + details);
            details = details.replaceAll("\r\n","<br>");
            log.warn("after+details:" + details);
            tips = tips.replaceAll("\r\n","<br>");
            activityDTO = new ActivityDTO(name, date, location, charge, chargeDetail, sponsor, details, tips);
            //todo:
            //怎么传userid进来呢？
            //设置activityId为"201803011526（yyyymmddhhmm）+userid"(userid八位数字，整个id用String表示)
            //todo:end
            //log.warn("enter doLaunchActivity, activity:" + activity);
            String uploadPath = context.getRealPath("") + "files" + File.separator;
            //String uploadPath = context.getRealPath("") + File.separator + "temp" + File.separator;
            //todo:为什么下面这个log无法识别？
            log.warn("uploadPath:" + uploadPath);
            //Now do something with file...
            FileCopyUtils.copy(file.getBytes(), new File(uploadPath + file.getOriginalFilename()));

            activityDTO.setLogo("/files/" + file.getOriginalFilename());

            activityService.save(activityDTO);

            log.warn("activityDTO:" + activityDTO);
            //todo:下面开始解析文件，存mongo


            String fileName = file.getOriginalFilename();

            //成功才需要这么设置，失败了就不需要设置了
            model.addAttribute("activity", activityDTO);

            //这里加载评论区。。。点击活动详情时候也是这么展示：先从数据库中检索一下此活动id关联的评论，然后便利展示
            model.addAttribute("comments", null);
        }catch(IOException e){
            log.error("launchAcitivity failed...");
            return "launchAcitivityFailed";//返回到这个页面提示发布失败，以及详细信息，随后6s后自动跳转活动布页面（用户也可以点击立即跳转）
        }
        

        return "activityDetail";

    }

    /**
     * 查询所有活动信息
     */
    @GetMapping("/showActivities")
    public String showActivities(ModelMap modelMap){
        log.warn("enter showActivities");
        List<ActivityDTO> activityDTOList = activityService.findAll();
        log.warn("list.size:" + activityDTOList.size());
        //log.warn("list:" + activityDTOList);
        //log.warn("first:" + activityDTOList.get(0));
        modelMap.addAttribute("activityDTOList", activityDTOList);
        return "main";
    }

    /**
     * 查询活动详情
     */
    @GetMapping("/activityDetail")
    public String showActivities(ModelMap modelMap, Long activityId){
        ActivityDTO activityDTO = activityService.findById(activityId);
        modelMap.addAttribute("activity", activityDTO);

        //todo:查询关联评论
        List<CommentDTO> commentDTOList = commentService.findCommentDTOByActivityId(activityId);
        modelMap.addAttribute("commentDTOList", commentDTOList);

        return "activityDetail";
    }




}

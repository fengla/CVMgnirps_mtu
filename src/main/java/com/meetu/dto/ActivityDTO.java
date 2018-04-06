package com.meetu.dto;

import lombok.Data;
//import org.springframework.data.annotation.Id;
import javax.persistence.Id;//这2个ID有什么区别？为什么用上面哪个就不对？push-notification中不就是用上面的这个吗？
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;



@Entity
@Data
public class UserDTO {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO) //分别理解几种生成机制
    private Long id;

    private String userName;//email，用于登录
    private String nickName;//用户昵称
    private String pwd;

    private String wechat;
    private String tel;

    private String school;
    private int age;

    private int sex;

//    @Id
//    public Long getId(){
//        return this.id;
//    }
}

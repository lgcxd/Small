package com.cbb.dto.user;

import com.alibaba.fastjson.annotation.JSONField;

import java.util.Date;

/**
 * @Author: chenbj
 * @Description: 用户实体类
 * @Date: 2018/5/29 17:20
 * @Version:
 */
public class UserDto {
    private int u_id;   //用户的id
    private String u_name;  //用户的名字
    private String u_pwd;   //用户的密码
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date u_createtime;    //用户创建时间
    private String u_email;     //用户邮箱
    private String u_address;   //用户地址
    private String u_tel;   //用户电话号

    public UserDto() {
    }
    public UserDto(int u_id, String u_name, String u_pwd, Date u_createtime, String u_email, String u_address, String u_tel) {
        this.u_id = u_id;
        this.u_name = u_name;
        this.u_pwd = u_pwd;
        this.u_createtime = u_createtime;
        this.u_email = u_email;
        this.u_address = u_address;
        this.u_tel = u_tel;
    }
    @Override
    public String toString() {
        return "UserDto{" +
                "u_id=" + u_id +
                ", u_name='" + u_name + '\'' +
                ", u_pwd='" + u_pwd + '\'' +
                ", u_createtime='" + u_createtime + '\'' +
                ", u_email='" + u_email + '\'' +
                ", u_address='" + u_address + '\'' +
                ", u_tel='" + u_tel + '\'' +
                '}';
    }

    public int getU_id() {
        return u_id;
    }
    public void setU_id(int u_id) {
        this.u_id = u_id;
    }
    public String getU_name() {
        return u_name;
    }
    public void setU_name(String u_name) {
        this.u_name = u_name;
    }
    public String getU_pwd() {
        return u_pwd;
    }
    public void setU_pwd(String u_pwd) {
        this.u_pwd = u_pwd;
    }
    public Date getU_createtime() {
        return u_createtime;
    }
    public void setU_createtime(Date u_createtime) {
        this.u_createtime = u_createtime;
    }
    public String getU_email() {
        return u_email;
    }
    public void setU_email(String u_email) {
        this.u_email = u_email;
    }
    public String getU_address() {
        return u_address;
    }
    public void setU_address(String u_address) {
        this.u_address = u_address;
    }
    public String getU_tel() {
        return u_tel;
    }
    public void setU_tel(String u_tel) {
        this.u_tel = u_tel;
    }
}

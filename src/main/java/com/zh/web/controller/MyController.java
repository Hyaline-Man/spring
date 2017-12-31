package com.zh.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MyController {
    @RequestMapping("/login")
    @ResponseBody
    public String login(@RequestParam(value = "username", required = false)String username,
            @RequestParam(value = "password", required = false)String password,
                        @RequestParam(value = "password", required = false)String jsonData){
        return "Hello," + username + ". Your password is " + password;
    }

    @RequestMapping("/ajaxJson")
    @ResponseBody
    public String login(@RequestParam(value = "jsonData", required = false)String jsonData){
        System.out.println("asdfasdf");
        return "success";
    }

    @RequestMapping("/test")
    @ResponseBody
    public String test(){
//        System.out.println("asdfasdf");
        return "success";
    }
}

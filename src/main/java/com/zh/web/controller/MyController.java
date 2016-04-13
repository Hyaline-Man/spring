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
            @RequestParam(value = "password", required = false)String password){
        return "Hello," + username + ". Your password is " + password;
    }
}
package com.zh.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Administrator on 2016/6/23.
 */
@Controller
@RequestMapping(value="/ajax")
public class MyAjaxController {
    @RequestMapping(value="/serialize")
    @ResponseBody
    public String testAjax1(@RequestParam(value = "1", required = false)String data1,
                        @RequestParam(value = "2", required = false)String data2,
                        @RequestParam(value = "3", required = false)String data3,
                        @RequestParam(value = "4", required = false)String data4,
                        @RequestParam(value = "5", required = false)String data5,
                        @RequestParam(value = "6", required = false)String data6,
                        @RequestParam(value = "7", required = false)String data7,
                        @RequestParam(value = "8", required = false)String data8,
                        @RequestParam(value = "9", required = false)String data9,
                        @RequestParam(value = "10", required = false)String data10,
                        @RequestParam(value = "11", required = false)String data11,
                        @RequestParam(value = "12", required = false)String data12,
                        @RequestParam(value = "13", required = false)String data13,
                        @RequestParam(value = "14", required = false)String data14,
                        @RequestParam(value = "15", required = false)String data15,
                        @RequestParam(value = "16", required = false)String data16){
        System.out.println(data1);
        System.out.println(data2);
        System.out.println(data3);
        System.out.println(data4);
        System.out.println(data5);
        System.out.println(data6);
        System.out.println(data7);
        System.out.println(data8);
        System.out.println(data9);
        System.out.println(data10);
        System.out.println(data11);
        System.out.println(data12);
        System.out.println(data13);
        System.out.println(data14);
        System.out.println(data15);
        System.out.println(data16);
        return "success";
    }
}

package com.lzq.hse.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class indexController {

    @RequestMapping("/index")
    public String index(){
        return "index";
    }


    //
    @RequestMapping("/login")
    @ResponseBody
    public String login(String username,String password) {
        return "index";
    }
}

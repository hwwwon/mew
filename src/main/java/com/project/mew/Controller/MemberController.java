package com.project.mew.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MemberController {
    @GetMapping("/member/signUp")
    public String signupView(){
        return "member/signUp";
    }

    @GetMapping("/member/login")
    public String loginView(){
        return "member/login";
    }
}

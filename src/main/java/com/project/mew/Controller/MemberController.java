package com.project.mew.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MemberController {
    // 회원가입
    @GetMapping("/member/signUp")
    public String signupView(){
        return "member/signUp";
    }
    // 로그인
    @GetMapping("/member/login")
    public String loginView(){
        return "member/login";
    }
    // 마이페이지
    @GetMapping("/member/mypage")
    public String mypageView(){
        return "member/mypage";
    }
}

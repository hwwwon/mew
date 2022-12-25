package com.project.mew.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/movieSearch")
    public String movieSearchView() {
        return "movieSearch";
    }

}
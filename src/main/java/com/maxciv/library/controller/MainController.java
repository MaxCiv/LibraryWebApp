package com.maxciv.library.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author maxim.oleynik
 * @since 12.11.2018
 */
@Controller
@Slf4j
public class MainController {

    @GetMapping("/home")
    public String getHome() {
        return "home";
    }
}

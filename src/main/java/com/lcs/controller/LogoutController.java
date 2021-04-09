package com.lcs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

/**
 * @author 刘成舜
 * @Description:
 */
@Controller
public class LogoutController {


    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:login";
    }

}

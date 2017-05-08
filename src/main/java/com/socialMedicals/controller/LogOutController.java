package com.socialMedicals.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import javax.servlet.http.HttpSession;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class LogOutController {

    @RequestMapping(value = "/logoutDoctor" , method = GET)
    public String logoutDoctor(HttpSession httpSession) {
        httpSession.removeAttribute("emaildoctor");
        return "index";
    }

    @RequestMapping(value = "/logoutPatient" , method = GET)
    public String logout(HttpSession httpSession) {
        httpSession.removeAttribute("emailpatient");
        return "index";
    }
}

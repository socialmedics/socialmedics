package com.socialMedicals.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

/**
 * Created by yonay on 28/03/2017.
 */

@Controller
public class MedicsController {
    @RequestMapping(value = "/medicsRegister", method = GET)
    public String findAllUser(Model model){

        return "register";
    }
}

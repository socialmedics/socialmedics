package com.socialMedicals.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class DoctorController {

    @RequestMapping(value = "/doctorHome", method = GET)
    public String doctorHome (Model model){
        return "doctorHome";
    }

}

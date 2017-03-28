package com.socialMedicals.controller;


import com.socialMedicals.entity.Patient;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class IndexController {

    @RequestMapping(value = "/" , method = GET)
    public String index(Model model) {
        return "index";
    }

}


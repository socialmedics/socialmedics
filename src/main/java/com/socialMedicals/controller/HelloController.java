package com.socialMedicals.controller;


import com.socialMedicals.entity.Patient;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class HelloController {

    @RequestMapping(value = "/index" , method = GET)
    public String index(Model model) {
        model.addAttribute("message","esto es una prueba");
        return "index";
    }

    @RequestMapping("/hello")
    @ResponseBody
    public String hello2(@ModelAttribute("patients")Patient patient) {
        System.out.println(patient.getName());
        System.out.println(patient.getSurname());
        return "tomate";
    }
    @RequestMapping(path = "/", method = GET)
    @ResponseBody
    public String hello() {
        return "Hello World!";
    }
}


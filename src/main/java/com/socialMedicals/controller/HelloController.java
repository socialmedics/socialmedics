package com.socialMedicals.controller;


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
    public String hello2() {
        System.out.println("foo");
        return "foo";
    }
    @RequestMapping(path = "/", method = GET)
    @ResponseBody
    public String hello() {
        return "Hello World!";
    }
}


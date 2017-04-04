package com.socialMedicals.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

/**
 * Created by yonay on 04/04/2017.
 */
@Controller
public class RequestDate {

    @RequestMapping(value = "/pedirCita",method = GET)
    public String requestDateGet(Model model){
        return "requestDate";
    }
}

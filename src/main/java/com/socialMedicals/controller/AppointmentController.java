package com.socialMedicals.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AppointmentController {

    @RequestMapping(value = "/viewAppointment",method = RequestMethod.GET)
    public String viewAppointments(){
        return "viewAppointment";
    }
}

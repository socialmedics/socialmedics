package com.socialMedicals.controller;

import com.socialMedicals.entity.Date;
import com.socialMedicals.entity.Medics;
import com.socialMedicals.repository.DateRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class AppointmentController {

    private final DateRepository dateRepository;

    @Autowired
    public AppointmentController(DateRepository dateRepository) {

        this.dateRepository = dateRepository;
    }

    @RequestMapping(value = "/viewAppointment",method = RequestMethod.GET)
    public String viewAppointments(Model model, HttpServletRequest httpServletRequest){
        Medics medic = (Medics) httpServletRequest.getSession().getAttribute("emaildoctor");
        System.out.println(medic.getName());
        for (Date date : dateRepository.findAll()
                ) {
            System.out.println(date.getDoctor());
        }

        model.addAttribute("appointments", dateRepository.findByDoctor(medic.getName()));
        return "viewAppointment";
    }
}

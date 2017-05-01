package com.socialMedicals.controller;

import com.socialMedicals.entity.Date;
import com.socialMedicals.entity.Medics;
import com.socialMedicals.repository.DateRepository;
import com.socialMedicals.services.UpdateDate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
        model.addAttribute("appointments", dateRepository.findByDoctor(medic.getName()));
        model.addAttribute("doctor",medic);
        return "viewAppointment";
    }

    @RequestMapping(value = "/acceptAppointment", method = RequestMethod.POST)
    public String acceptAppointment(@ModelAttribute Date date,
                                    @RequestParam(name = "reject", required = false) String reject ,
                                    @RequestParam(name = "accept",required = false)String accept,
                                    HttpServletRequest httpServletRequest){
        Medics medic = (Medics) httpServletRequest.getSession().getAttribute("emaildoctor");
        System.out.println(date);
        if(accept.equals("accept")){
            date.setDoctor(medic.getName());
            date.setAccepted(true);
            new UpdateDate(dateRepository).updateAccepted(date);
            return "redirect:/doctorHome";
        }
        return "redirect:/doctorHome";

    }
}

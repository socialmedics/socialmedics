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
import java.util.ArrayList;
import java.util.List;

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
        List<Date> dates = dateRepository.findByDoctor(medic.getName());
        List<Date> datesNotAccepted = new ArrayList<>();
        for (Date date: dates) {
            if (!date.getAccepted()) {
                datesNotAccepted.add(date);
            }
        }
        model.addAttribute("appointments",datesNotAccepted);
        model.addAttribute("doctor",medic);
        return "viewAppointment";
    }

    @RequestMapping(value = "/acceptAppointment", method = RequestMethod.POST)
    public String acceptAppointment(@ModelAttribute Date date,
                                    @RequestParam(name = "accept",required = false)String accept,
                                    HttpServletRequest httpServletRequest){
        Medics medic = (Medics) httpServletRequest.getSession().getAttribute("emaildoctor");
        date.setDoctor(medic.getName());
        date.setAccepted(false);
        System.out.println(date);

        if(accept.equals("accept")){
            date.setAccepted(true);
            new UpdateDate(dateRepository).updateAccepted(date);
            return "redirect:/doctorHome";
        }if(accept.equals("reject")) {
            Date date1 = dateRepository.findById(date.getId());
            System.out.println(date1);
            dateRepository.delete(date.getId());
            return "redirect:/doctorHome";
        }
        return "redirect:/changeDoctor";
    }
}

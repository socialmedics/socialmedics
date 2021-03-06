package com.socialMedicals.controller;

import com.socialMedicals.entity.Date;
import com.socialMedicals.entity.Patient;
import com.socialMedicals.repository.CenterRepository;
import com.socialMedicals.repository.DateRepository;
import com.socialMedicals.repository.MedicsRepository;
import com.socialMedicals.services.CreateDate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class RequestDateController {

    private final CenterRepository centerRepository;
    private final MedicsRepository medicsRepository;
    private final DateRepository dateRepository;
    @Autowired
    public RequestDateController(DateRepository dateRepository,
                                 CenterRepository centerRepository, MedicsRepository medicsRepository) {
        this.dateRepository = dateRepository;
        this.centerRepository = centerRepository;
        this.medicsRepository = medicsRepository;
    }

    @RequestMapping(value = "/pedirCita",method = GET)
    public String requestDateGet(Model model){
        model.addAttribute("centers",centerRepository.findAll());
        model.addAttribute("medics",medicsRepository.findAll());
        return "requestDate";
    }

    @RequestMapping(value = "/pedirCita", method = POST)
    public String requestDatePost(@ModelAttribute Date date,
                                  HttpServletRequest httpServletRequest){

        Patient patient = (Patient) httpServletRequest.getSession().getAttribute("emailpatient");
        date.update(patient);
        System.out.println(date.toString());
        new CreateDate(dateRepository).execute(date);
        
        return "redirect:/welcomePatient";
    }
}

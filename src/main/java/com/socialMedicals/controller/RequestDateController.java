package com.socialMedicals.controller;

import com.socialMedicals.repository.CenterRepository;
import com.socialMedicals.repository.MedicsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class RequestDateController {

    private final CenterRepository centerRepository;
    private final MedicsRepository medicsRepository;
    @Autowired
    public RequestDateController(CenterRepository centerRepository, MedicsRepository medicsRepository) {
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
    public String requestDatePost(){
        return "redirect:/";
    }
}

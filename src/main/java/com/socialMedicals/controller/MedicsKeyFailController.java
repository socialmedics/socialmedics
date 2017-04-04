package com.socialMedicals.controller;

import com.socialMedicals.entity.Medics;
import com.socialMedicals.repository.MedicsRepository;
import com.socialMedicals.services.CreateDoctor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;


@Controller
public class MedicsKeyFailController {

    private final MedicsRepository medicsRepository;

    @Autowired
    public MedicsKeyFailController(MedicsRepository medicsRepository) {
        this.medicsRepository=medicsRepository;
    }

    @RequestMapping(value = "/medicsRegisterFail" , method = GET)
    public String keyFail(Model model) {
        return "medicsKeyFail";
    }

    @RequestMapping(value = "/medicsRegisterFail" , method = POST)
    public String keyOk(@ModelAttribute Medics medics, @RequestParam(name ="access") String access) {
        if(access.equals("1234")){
            new CreateDoctor(medicsRepository).execute(medics);
            return "redirect:/";
        }
        return "redirect:/medicsKeyFail";
    }



}

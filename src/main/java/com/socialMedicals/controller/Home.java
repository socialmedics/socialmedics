package com.socialMedicals.controller;

import com.socialMedicals.repository.MedicsRepository;
import com.socialMedicals.repository.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;



@Controller
public class Home {

    private final MedicsRepository medicsRepository;
    private final PatientRepository patientRepository;

    @Autowired
    public Home(MedicsRepository medicsRepository,PatientRepository patientRepository){
        this.medicsRepository=medicsRepository;
        this.patientRepository=patientRepository;
    }

    @RequestMapping(value = "/homeMedic", method = GET)
    public String welcomeMedic(Model model){
        model.addAttribute("medics", medicsRepository.findAll());
        return "welcomeDoctors";
    }

    @RequestMapping(value = "/homePatient", method = GET)
    public String welcomePatient(Model model){
        model.addAttribute("patients", patientRepository.findAll());
        return "welcomePatient";
    }
}

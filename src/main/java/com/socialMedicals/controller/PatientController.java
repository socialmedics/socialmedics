package com.socialMedicals.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import com.socialMedicals.entity.Patient;
import com.socialMedicals.repository.PatientRepository;
import org.springframework.web.bind.annotation.ResponseStatus;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import static org.springframework.http.HttpStatus.CREATED;



@Controller
public class PatientController {

    private final PatientRepository patientRepository;

    @Autowired
    public PatientController(PatientRepository patientRepository) {
        this.patientRepository = patientRepository;
    }

    @RequestMapping(value = "/patients", method = GET)
    public String findAllUser(Model model){
        model.addAttribute("patients", patientRepository.findAll());
        return "AddPatients";
    }

    @RequestMapping(value = "/patients", method = POST)
    public String addUser(@ModelAttribute Patient patient){
        patientRepository.saveAndFlush(patient);
        return "redirect:/patients";
    }

    @RequestMapping(value = "/login", method = GET)
    public String logWithOneUser(Model model){
        model.addAttribute("patients", patientRepository.findAll());
        return "login";
    }

    @RequestMapping(value = "/home", method = GET)
    public String welcome(Model model){
        model.addAttribute("patients", patientRepository.findAll());
        return "welcome";
    }

}

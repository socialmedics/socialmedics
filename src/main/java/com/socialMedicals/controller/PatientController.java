package com.socialMedicals.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import com.socialMedicals.entity.Patient;
import com.socialMedicals.repository.PatientRepository;
import org.springframework.web.bind.annotation.ResponseStatus;

import javax.persistence.Entity;

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
        return "patients";
    }

    @RequestMapping(value = "/patients", method = POST)
    @ResponseStatus(code = CREATED)
    public void addUser(@RequestBody Patient patient){
        System.out.println(patient.toString());
        patientRepository.saveAndFlush(patient);
    }

    @RequestMapping(value = "/doctorHome", method = GET)
    public String doctorHome (Model model){
        return "doctorHome";
    }

}

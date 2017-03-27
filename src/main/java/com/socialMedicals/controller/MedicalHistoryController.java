package com.socialMedicals.controller;

import com.socialMedicals.entity.MedicalHistory;
import com.socialMedicals.repository.MedicalHistoryRepository;
import com.socialMedicals.repository.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;


@Controller
public class MedicalHistoryController {

    private final MedicalHistoryRepository medicalHistoryRepository;
    private final PatientRepository patientRepository;

    @Autowired
    public MedicalHistoryController(MedicalHistoryRepository medicalHistoryRepository, PatientRepository patientRepository) {
        this.medicalHistoryRepository = medicalHistoryRepository;
        this.patientRepository = patientRepository;
    }

    @RequestMapping(value = "/medicalHistory", method = GET)
    public String findAllHistories(Model model){
        model.addAttribute("medicalhistory", medicalHistoryRepository.findAll());
        model.addAttribute("patients", patientRepository.findAll());
        return "medicalHistory";
    }

    @RequestMapping(value = "/medicalHistory", method = POST)
    public String addMedicalHistory(@RequestParam(name="selector", required = false) String selector, MedicalHistory medicalHistory){
        System.out.println("ESTE ES MI SELECTOR " + selector);
        return "redirect:/medicalHistory";
    }

    @RequestMapping(value = "/medicalHistoryForm", method = POST)
    public String postForm (MedicalHistory medicalHistory){
        medicalHistoryRepository.saveAndFlush(medicalHistory);
        return "redirect:/medicalHistory";
    }
}


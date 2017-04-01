package com.socialMedicals.controller;


import com.socialMedicals.entity.MedicalHistory;
import com.socialMedicals.repository.MedicalHistoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class DoctorController {

    private final MedicalHistoryRepository medicalHistoryRepository;

    @Autowired
    public DoctorController(MedicalHistoryRepository medicalHistoryRepository) {
        this.medicalHistoryRepository = medicalHistoryRepository;
    }



    @RequestMapping(value = "/doctorMedicalHistory", method = POST)
    public String doctorMedicalHistory (@RequestParam(name = "email", required = false) String email, Model model){
        MedicalHistory medicalHistory = medicalHistoryRepository.findByEmail(email);
        model.addAttribute("medicalHistory", medicalHistory);
        return "showMedicalHistory";
    }

    @RequestMapping(value = "/doctorFormMedicalHistory", method = GET)
    public void doctorMedicalHistory (Model model) {

    }

    @RequestMapping(value = "/doctorFormMedicalHistory", method = POST)
    public void doctorFormMedicalHistory (MedicalHistory medicalHistory) {
        medicalHistoryRepository.saveAndFlush(medicalHistory);
    }
}

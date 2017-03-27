package com.socialMedicals.controller;

import com.socialMedicals.entity.MedicalHistory;
import com.socialMedicals.repository.MedicalHistoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import static org.springframework.http.HttpStatus.CREATED;



@Controller
public class MedicalHistoryController {

    private final MedicalHistoryRepository medicalHistoryRepository;

    @Autowired
    public MedicalHistoryController(MedicalHistoryRepository medicalHistoryRepository) {
        this.medicalHistoryRepository = medicalHistoryRepository;
    }

    @RequestMapping(value = "/medicalHistory", method = GET)
    public String findAllHistories(Model model){
        model.addAttribute("medicalhistory", medicalHistoryRepository.findAll());
        return "medicalHistory";
    }

    @RequestMapping(value = "/medicalHistory", method = POST)
    @ResponseStatus(code = CREATED)
    public void addMedicalHistory(MedicalHistory medicalHistory){
        medicalHistoryRepository.saveAndFlush(medicalHistory);
    }
}


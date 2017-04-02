package com.socialMedicals.controller;


import com.socialMedicals.entity.MedicalHistory;
import com.socialMedicals.repository.MedicalHistoryRepository;
import com.socialMedicals.repository.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class DoctorController {

    private final MedicalHistoryRepository medicalHistoryRepository;

    @Autowired
    public DoctorController(MedicalHistoryRepository medicalHistoryRepository, PatientRepository patientRepository) {
        this.medicalHistoryRepository = medicalHistoryRepository;
    }



    @RequestMapping(value = "/doctorMedicalHistory", method = POST)
    public String doctorMedicalHistory (@RequestParam(name = "date", required = false) String historyDate, @RequestParam(name = "time", required = false) String historyTime, Model model){
        MedicalHistory medicalHistory = medicalHistoryRepository.findHistoryByHistorydateAndHistorytime(historyDate, historyTime);
        model.addAttribute("medicalHistory", medicalHistory);
        return "showMedicalHistory";
    }

    @RequestMapping(value = "/patientMedicalHistory", method = POST)
    public String patientMedicalHistory (@RequestParam(name = "email", required = false) String email, Model model){
        List<MedicalHistory> medicalHistoryList = medicalHistoryRepository.findByEmail(email);
        model.addAttribute("medicalHistory", medicalHistoryList);
        return "showPatientMedicalHistory";
    }

    @RequestMapping(value = "/doctorFormMedicalHistory", method = GET)
    public void doctorMedicalHistory (Model model) {

    }

    @RequestMapping(value = "/doctorFormMedicalHistory", method = POST)
    public void doctorFormMedicalHistory (MedicalHistory medicalHistory) {
        System.out.println(medicalHistory.getName());
        medicalHistoryRepository.saveAndFlush(medicalHistory);
    }
}

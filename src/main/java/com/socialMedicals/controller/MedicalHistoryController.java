package com.socialMedicals.controller;

import com.socialMedicals.entity.MedicalHistory;
import com.socialMedicals.entity.Patient;
import com.socialMedicals.repository.MedicalHistoryRepository;
import com.socialMedicals.repository.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

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

    @RequestMapping(value = "/doctorMedicalHistory", method = GET)
    public String findAllHistories(Model model) {
        List<Patient> patientList = patientRepository.findAll();
        List<MedicalHistory> medicalHistories = medicalHistoryRepository.findAll();
        List<Patient> patients = new ArrayList<>();
        for (Patient aPatientList : patientList) {
            for (MedicalHistory aMedicalHistoryList : medicalHistories) {
                if ((aMedicalHistoryList.getEmail().equals(aPatientList.getEmail()))) {
                    if (!patients.contains(aPatientList)) {
                        patients.add(aPatientList);
                    }
                }
            }
        }
        model.addAttribute("patients", patients);
        return "doctorMedicalHistory";
    }

    @RequestMapping(value = "/medicalHistoryForm", method = POST)
    public String postForm(MedicalHistory medicalHistory) {
        medicalHistoryRepository.saveAndFlush(medicalHistory);
        return "redirect:/doctorMedicalHistory";
    }

    @RequestMapping(value = "/showMedicalHistory", method = POST)
    public String getPatientMedicalHistory(@RequestParam(name = "email", required = false) String email, Model model) {
        MedicalHistory medicalHistory = medicalHistoryRepository.findHistoryByEmail(email);
        model.addAttribute("medicalHistory", medicalHistory);
        return "showMedicalHistory";
    }

}


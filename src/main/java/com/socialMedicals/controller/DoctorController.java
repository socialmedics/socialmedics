package com.socialMedicals.controller;


import com.socialMedicals.entity.MedicalHistory;
import com.socialMedicals.entity.Medics;
import com.socialMedicals.entity.Prescription;
import com.socialMedicals.repository.MedicalHistoryRepository;
import com.socialMedicals.repository.MedicsRepository;
import com.socialMedicals.repository.PatientRepository;
import com.socialMedicals.repository.PrescriptionRepository;
import com.socialMedicals.services.CreateMedicalHistory;
import com.socialMedicals.services.CreatePrescription;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class DoctorController {

    private final MedicalHistoryRepository medicalHistoryRepository;
    private final MedicsRepository medicsRepository;
    private final PrescriptionRepository prescriptionRepository;

    @Autowired
    public DoctorController(MedicalHistoryRepository medicalHistoryRepository, PatientRepository patientRepository, MedicsRepository medicsRepository, PrescriptionRepository prescriptionRepository) {
        this.medicalHistoryRepository = medicalHistoryRepository;
        this.medicsRepository = medicsRepository;
        this.prescriptionRepository = prescriptionRepository;
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
    public String doctorMedicalHistory (Model model) {
        return "doctorFormMedicalHistory";
    }

    @RequestMapping(value = "/doctorFormMedicalHistory", method = POST)
    public void doctorFormMedicalHistory (MedicalHistory medicalHistory) {
        new CreateMedicalHistory(medicalHistoryRepository).execute(medicalHistory);
    }

    @RequestMapping(value = "/doctorsByCenter", method = GET, produces = "application/json")
    public @ResponseBody List<Medics> doctorsByCenter (@RequestParam(name = "center") String center) {
        return medicsRepository.findByCenter(center);
    }

    @RequestMapping(value = "/prescriptionForm", method = GET)
    public String doctorPrescription (Model model) {
        return "prescriptionForm";
    }

    @RequestMapping(value = "/prescriptionForm", method = POST)
    public String doctorPrescriptionForm (Prescription prescription) {
        new CreatePrescription(prescriptionRepository).execute(prescription);
        return "redirect:/doctorHome";
    }
}

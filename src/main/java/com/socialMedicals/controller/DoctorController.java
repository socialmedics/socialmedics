package com.socialMedicals.controller;


import com.socialMedicals.entity.MedicalHistory;
import com.socialMedicals.entity.Medics;
import com.socialMedicals.entity.Patient;
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

import javax.servlet.http.HttpServletRequest;
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
    public String doctorMedicalHistory (@RequestParam(name = "date", required = false) String historyDate,
                                        @RequestParam(name = "time", required = false) String historyTime,
                                        Model model,HttpServletRequest httpServletRequest){
        MedicalHistory medicalHistory = medicalHistoryRepository.findHistoryByHistorydateAndHistorytime(historyDate, historyTime);
        Medics medics = (Medics) httpServletRequest.getSession().getAttribute("emaildoctor");
        model.addAttribute("email",medics.getEmail());
        model.addAttribute("name",medics.getName());
        model.addAttribute("id", medics.getId());
        model.addAttribute("medicalHistory", medicalHistory);
        return "showMedicalHistory";
    }

    @RequestMapping(value = "/medicalHistoryPatient", method = POST)
    public String medicalHistoryPatient (@RequestParam(name = "date", required = false) String historyDate,
                                        @RequestParam(name = "time", required = false) String historyTime,
                                        Model model,HttpServletRequest httpServletRequest){
        MedicalHistory medicalHistory = medicalHistoryRepository.findHistoryByHistorydateAndHistorytime(historyDate, historyTime);
        Patient patient = (Patient) httpServletRequest.getSession().getAttribute("emailpatient");
        model.addAttribute("email",patient.getEmail());
        model.addAttribute("name",patient.getName());
        model.addAttribute("medicalHistory", medicalHistory);
        return "showMedicalPatientHistory";
    }

    @RequestMapping(value = "/patientMedicalHistory", method = POST)
    public String doctorMedicalHistory (HttpServletRequest httpServletRequest,@RequestParam(name = "email", required = false) String email, Model model){
        List<MedicalHistory> medicalHistoryList = medicalHistoryRepository.findByEmail(email);
        Medics medics = (Medics) httpServletRequest.getSession().getAttribute("emaildoctor");
        model.addAttribute("email",medics.getEmail());
        model.addAttribute("name",medics.getName());
        model.addAttribute("id", medics.getId());
        model.addAttribute("medicalHistory", medicalHistoryList);
        return "showPatientMedicalHistory";
    }

    @RequestMapping(value = "/patientMedicalHistory",method = GET)
    public String doctorShowMedicalHistory(HttpServletRequest httpServletRequest,Model model){
        Medics medics = (Medics) httpServletRequest.getSession().getAttribute("emaildoctor");
        model.addAttribute("email",medics.getEmail());
        model.addAttribute("name",medics.getName());
        model.addAttribute("id", medics.getId());
        return "doctorMedicalHistory";
    }

    @RequestMapping(value = "/patientHistory", method = POST)
    public String patientMedicalHistory (HttpServletRequest httpServletRequest,@RequestParam(name = "email", required = false) String email, Model model){
        Patient patient = (Patient) httpServletRequest.getSession().getAttribute("emailpatient");
        model.addAttribute("email",patient.getEmail());
        model.addAttribute("name",patient.getName());
        List<MedicalHistory> medicalHistoryList = medicalHistoryRepository.findByEmail(email);
        model.addAttribute("medicalHistory", medicalHistoryList);
        return "showMedicalHistoryPatient";
    }

    @RequestMapping(value = "/patientHistory",method = GET)
    public String patientShowMedicalHistory(HttpServletRequest httpServletRequest,Model model){
        Patient patient = (Patient) httpServletRequest.getSession().getAttribute("emailpatient");
        model.addAttribute("email",patient.getEmail());
        model.addAttribute("name",patient.getName());
        return "showMedicalHistoryPatient";
    }




    @RequestMapping(value = "/doctorFormMedicalHistory", method = GET)
    public String doctorMedicalHistory (Model model, HttpServletRequest httpServletRequest) {
        Medics medics = (Medics) httpServletRequest.getSession().getAttribute("emaildoctor");
        model.addAttribute("email",medics.getEmail());
        model.addAttribute("name",medics.getName());
        model.addAttribute("id", medics.getId());
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
    public String doctorPrescription(Model model, HttpServletRequest httpServletRequest) {
        return "prescriptionForm";
    }

    @RequestMapping(value = "/prescriptionForm", method = POST)
    public String doctorPrescriptionForm(Prescription prescription, HttpServletRequest httpServletRequest) {
        Medics medics = (Medics)httpServletRequest.getSession().getAttribute("emaildoctor");
        prescription.setDoctor(medics.getName());
        prescription.setDepartment(medics.getEspecialidad());
        new CreatePrescription(prescriptionRepository).execute(prescription);
        return "redirect:/doctorHome";
    }
}

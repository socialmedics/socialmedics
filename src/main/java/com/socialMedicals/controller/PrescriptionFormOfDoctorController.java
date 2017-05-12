package com.socialMedicals.controller;

import com.socialMedicals.entity.Medics;
import com.socialMedicals.entity.Prescription;
import com.socialMedicals.repository.PrescriptionRepository;
import com.socialMedicals.services.CreatePrescription;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class PrescriptionFormOfDoctorController {
    private final PrescriptionRepository prescriptionRepository;

    @Autowired
    public PrescriptionFormOfDoctorController(PrescriptionRepository prescriptionRepository) {
        this.prescriptionRepository = prescriptionRepository;
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

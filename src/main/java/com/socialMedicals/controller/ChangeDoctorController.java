package com.socialMedicals.controller;

import com.socialMedicals.entity.Medics;
import com.socialMedicals.repository.MedicalHistoryRepository;
import com.socialMedicals.repository.MedicsRepository;
import com.socialMedicals.repository.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

import java.util.ArrayList;
import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class ChangeDoctorController {
    private final MedicsRepository medicsRepository;

    @Autowired
    public ChangeDoctorController(MedicsRepository medicsRepository) {
        this.medicsRepository = medicsRepository;
    }

    @RequestMapping(value = "/changeDoctor", method = GET)
    public String doctorChange(Model model, HttpServletRequest httpServletRequest) {
        Medics medics = (Medics)httpServletRequest.getSession().getAttribute("emaildoctor");
        model.addAttribute("center",medics.getCenter());
        List<Medics> medicsList = new ArrayList<>();
        System.out.println(medics.toString());
        for (Medics medics1: medicsRepository.findAll()) {
            if(!medics.toString().equals(medics1.toString())){
                System.out.println(medics1.toString());
                medicsList.add(medics1);
            }
        }
        model.addAttribute("medics",medicsList);
        return "viewDoctors";
    }
}

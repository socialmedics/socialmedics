package com.socialMedicals.controller;

import com.socialMedicals.entity.Medics;
import com.socialMedicals.entity.Patient;
import com.socialMedicals.repository.MedicsRepository;
import com.socialMedicals.repository.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

import static org.springframework.web.bind.annotation.RequestMethod.GET;



@Controller
public class Home {

    private final MedicsRepository medicsRepository;
    private final PatientRepository patientRepository;

    @Autowired
    public Home(MedicsRepository medicsRepository,PatientRepository patientRepository){
        this.medicsRepository=medicsRepository;
        this.patientRepository=patientRepository;
    }

    @RequestMapping(value = "/doctorHome", method = GET)
    public String doctorHome (Model model, HttpServletRequest httpServletRequest){
        String email = (String) httpServletRequest.getSession().getAttribute("emaildoctor");
        Medics medics = medicsRepository.findByEmail(email);
        model.addAttribute("email",email);
        model.addAttribute("name",medics.getName());
        return "doctorHome";
    }

    @RequestMapping(value = "/welcomePatient", method = GET)
    public String welcomePatient(Model model,HttpServletRequest httpServletRequest){
        String email = (String) httpServletRequest.getSession().getAttribute("emailpatient");
        Patient patient = patientRepository.findByEmail(email);
        model.addAttribute("name", patient.getName());
        model.addAttribute("email", email);
        return "welcomePatient";
    }
}

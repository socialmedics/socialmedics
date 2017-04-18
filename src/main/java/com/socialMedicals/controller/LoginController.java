package com.socialMedicals.controller;

import com.socialMedicals.entity.Medics;
import com.socialMedicals.entity.Patient;
import com.socialMedicals.repository.MedicsRepository;
import com.socialMedicals.repository.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;



@Controller
public class LoginController {

    private final PatientRepository patientRepository;
    private final MedicsRepository medicsRepository;


    @Autowired
    public LoginController(PatientRepository patientRepository,
                           MedicsRepository medicsRepository) {
        this.patientRepository = patientRepository;
        this.medicsRepository = medicsRepository;
    }

    @RequestMapping(value = "/login", method = GET)
    public String loginForm(Model model) {
        model.addAttribute("patients", patientRepository.findAll());
        return "login";
    }

    @RequestMapping(value = "/login", method = POST)
    public String verifyLogin(HttpSession httpSession, Model model, @RequestParam(value = "email", required = false) String email,
                              @RequestParam(value = "password", required = false) String password) {
        Medics medics = medicsRepository.findByEmail(email);
        Patient patient = patientRepository.findByEmail(email);

        if (medics != null && medics.getPassword().equals(password)) {
            httpSession.setAttribute("emaildoctor", medics);
            return "redirect:/doctorHome";
        } else if (patient != null && patient.getPassword().equals(password)){
            httpSession.setAttribute("emailpatient",patient);
            return "redirect:/welcomePatient";
        }
        return "redirect:/login";
    }


}

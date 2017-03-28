package com.socialMedicals.controller;

import com.socialMedicals.entity.Patient;
import com.socialMedicals.repository.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

/**
 * Created by yonay on 28/03/2017.
 */

@Controller
public class LoginController {

    private final PatientRepository patientRepository;

    @Autowired
    public LoginController(PatientRepository patientRepository) {
        this.patientRepository = patientRepository;
    }

    @RequestMapping(value = "/login", method = GET)
    public String loginForm(Model model){
        model.addAttribute("patients", patientRepository.findAll());
        return "login";
    }

    @RequestMapping(value = "/login", method = POST)
    public String verifyLogin(HttpSession httpSession, Model model, @RequestParam(value = "email", required= false) String email,
                              @RequestParam(value = "password",required = false) String password){
        List<Patient> patients2 = new ArrayList<>();
        Patient patient = new Patient();
        patient = patientRepository.findByEmail(email);
        if(patient != null && patient.getEmail().equals(email) && patient.getPassword().equals(password)){
            httpSession.setAttribute(patient.getEmail(),"done");
            return "redirect:/home";
        }
        return "redirect:/login";
    }

    @RequestMapping(value = "/home", method = GET)
    public String welcome(Model model){
        model.addAttribute("patients", patientRepository.findAll());
        return "welcome";
    }
}

package com.socialMedicals.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.socialMedicals.entity.Patient;
import com.socialMedicals.repository.PatientRepository;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;


@Controller
public class PatientController {

    private final PatientRepository patientRepository;

    @Autowired
    public PatientController(PatientRepository patientRepository) {
        this.patientRepository = patientRepository;
    }

    @RequestMapping(value = "/register", method = GET)
    public String findAllUser(Model model){
        model.addAttribute("patients", patientRepository.findAll());
        return "register";
    }

    @RequestMapping(value = "/register", method = POST)
    public String addUser(Model model,@ModelAttribute Patient patient, @RequestParam(name="usuario")String radioSelect,
                          @RequestParam(name = "name")String name,@RequestParam(name = "surname")String surname,
                          @RequestParam(name = "email")String email,@RequestParam(name = "password")String password,
                          @RequestParam(name = "center")String center){
        if(radioSelect.equals("medico")){
            return "redirect:/medicsRegister";
        }
        patientRepository.saveAndFlush(patient);
        return "redirect:/register";
    }



}

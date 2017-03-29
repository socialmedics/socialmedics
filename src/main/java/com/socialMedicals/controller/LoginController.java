package com.socialMedicals.controller;

import com.socialMedicals.entity.Patient;
import com.socialMedicals.entity.Users;
import com.socialMedicals.repository.MedicsRepository;
import com.socialMedicals.repository.PatientRepository;
import com.socialMedicals.repository.UsuariosRepository;
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
    private final UsuariosRepository usuariosRepository;
    private final MedicsRepository medicsRepository;


    @Autowired
    public LoginController(PatientRepository patientRepository, UsuariosRepository usuariosRepository,
                           MedicsRepository medicsRepository) {
        this.patientRepository = patientRepository;
        this.usuariosRepository = usuariosRepository;
        this.medicsRepository = medicsRepository;
    }

    @RequestMapping(value = "/login", method = GET)
    public String loginForm(Model model){
        model.addAttribute("patients", patientRepository.findAll());
        return "login";
    }

    @RequestMapping(value = "/login", method = POST)
    public String verifyLogin(HttpSession httpSession, Model model, @RequestParam(value = "email", required= false) String email,
                              @RequestParam(value = "password",required = false) String password){
        Users users = usuariosRepository.findByEmail(email);
        if(users != null && users.getEmail().equals(email) && users.getPassword().equals(password) &&
                users.getType().equals("medico")){
            httpSession.setAttribute(users.getEmail(),"done");
            return "redirect:/homeMedic";
        }else if(users != null && users.getEmail().equals(email) && users.getPassword().equals(password) &&
                users.getType().equals("paciente")){
            httpSession.setAttribute(users.getEmail(),"done");
            return "redirect:/homePatient";
        }
        return "redirect:/login";
    }

    @RequestMapping(value = "/homeMedic", method = GET)
    public String welcomeMedic(Model model){
        model.addAttribute("medics", medicsRepository.findAll());
        return "welcomeDoctors";
    }

    @RequestMapping(value = "/homePatient", method = GET)
    public String welcomePatient(Model model){
        model.addAttribute("patients", patientRepository.findAll());
        return "welcomePatient";
    }
}

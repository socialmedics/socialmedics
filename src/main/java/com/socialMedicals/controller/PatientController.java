package com.socialMedicals.controller;

import com.socialMedicals.entity.Patient;
import com.socialMedicals.entity.User;
import com.socialMedicals.repository.CenterRepository;
import com.socialMedicals.repository.PatientRepository;
import com.socialMedicals.repository.UsuariosRepository;
import com.socialMedicals.services.CreatePatient;
import com.socialMedicals.services.CreateUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;


@Controller
public class PatientController {

    private final PatientRepository patientRepository;
    private final UsuariosRepository usuariosRepository;
    private final CenterRepository centersRepository;


    @Autowired
    public PatientController(PatientRepository patientRepository, UsuariosRepository usuariosRepository, CenterRepository centersRepository) {
        this.patientRepository = patientRepository;
        this.usuariosRepository = usuariosRepository;
        this.centersRepository = centersRepository;
    }

    @RequestMapping(value = "/register", method = GET)
    public String findAllUser(Model model){
        model.addAttribute("patients", patientRepository.findAll());
        model.addAttribute("centers", centersRepository.findAll());
        return "register";
    }

    @RequestMapping(value = "/register", method = POST)
    public String addUser(Model model,@ModelAttribute Patient patient, @RequestParam(name="usuario")String radioSelect){

            User user = new User();
        if(radioSelect.equals("medico")){

            user.update(patient,"medico");
            new CreateUser(usuariosRepository).execute(user);
            return "redirect:/medicsRegister";
        }
        user.update(patient,"patient");
        new CreateUser(usuariosRepository).execute(user);
        new CreatePatient(patientRepository).execute(patient);
        return "redirect:/";
    }



}

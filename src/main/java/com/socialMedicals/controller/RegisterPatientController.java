package com.socialMedicals.controller;

import com.socialMedicals.entity.Medics;
import com.socialMedicals.entity.Patient;
import com.socialMedicals.entity.User;
import com.socialMedicals.repository.CenterRepository;
import com.socialMedicals.repository.MedicsRepository;
import com.socialMedicals.repository.PatientRepository;
import com.socialMedicals.repository.UsuariosRepository;
import com.socialMedicals.services.CreateDoctor;
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
public class RegisterPatientController {

    private final PatientRepository patientRepository;
    private final MedicsRepository medicsRepository;
    private final CenterRepository centersRepository;


    @Autowired
    public RegisterPatientController(PatientRepository patientRepository, MedicsRepository medicsRepository, CenterRepository centersRepository) {
        this.patientRepository = patientRepository;
        this.centersRepository = centersRepository;
        this.medicsRepository = medicsRepository;
    }

    @RequestMapping(value = "/register", method = GET)
    public String findAllUser(Model model) {
        model.addAttribute("centers", centersRepository.findAll());
        return "register";
    }

    @RequestMapping(value = "/register", method = POST)
    public String addUser(Model model, @ModelAttribute Patient patient, @ModelAttribute Medics medics, @RequestParam(name = "usuario") String radioSelect) {

        if (radioSelect.equals("medico")){
            new CreatePatient(patientRepository).execute(patient);
            return "redirect:/";
        }
        new CreateDoctor(medicsRepository).execute(medics);
        return "redirect:/register";
    }


}

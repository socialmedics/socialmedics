package com.socialMedicals.controller;

import com.socialMedicals.entity.Users;
import com.socialMedicals.repository.CenterRepository;
import com.socialMedicals.repository.UsuariosRepository;
import com.socialMedicals.services.CreatePatient;
import com.socialMedicals.services.CreateUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.socialMedicals.entity.Patient;
import com.socialMedicals.repository.PatientRepository;

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
    public String addUser(Model model,@ModelAttribute Patient patient, @RequestParam(name="usuario")String radioSelect,
                          @RequestParam(name = "name")String name,@RequestParam(name = "surname")String surname,
                          @RequestParam(name = "email")String email,@RequestParam(name = "password")String password,
                          @RequestParam(name = "center")String center){

        if(radioSelect.equals("medico")){
            Users users = getUsers(name, surname, email, password, center, "medico");
            new CreateUser(usuariosRepository).execute(users);
            return "redirect:/medicsRegister";
        }
        Users users = getUsers(name, surname, email, password, center, "paciente");

        new CreateUser(usuariosRepository).execute(users);
        new CreatePatient(patientRepository).execute(patient);
        return "redirect:/";
    }

    private Users getUsers(@RequestParam(name = "name") String name, @RequestParam(name = "surname") String surname, @RequestParam(name = "email") String email, @RequestParam(name = "password") String password, @RequestParam(name = "center") String center, String type) {
        Users users = new Users();
        users.setName(name);
        users.setSurname(surname);
        users.setCenter(center);
        users.setEmail(email);
        users.setPassword(password);
        users.setType(type);
        return users;
    }

}

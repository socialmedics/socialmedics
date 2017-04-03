package com.socialMedicals.controller;

import com.socialMedicals.entity.Medics;
import com.socialMedicals.entity.Users;
import com.socialMedicals.repository.CenterRepository;
import com.socialMedicals.repository.MedicsRepository;
import com.socialMedicals.repository.UsuariosRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;



@Controller
public class MedicsController {
    private final UsuariosRepository usuariosRepository;
    private final MedicsRepository medicsRepository;
    private final CenterRepository centersRepository;

    @Autowired
    public MedicsController(UsuariosRepository usuariosRepository,MedicsRepository medicsRepository, CenterRepository centersRepository) {
        this.usuariosRepository = usuariosRepository;
        this.medicsRepository=medicsRepository;
        this.centersRepository = centersRepository;
    }

    @RequestMapping(value = "/medicsRegister", method = GET)
    public String findAllUser(Model model) {
        List<Users> users = new ArrayList<>();
        users = usuariosRepository.findAll();
        Users lastuser = users.get(users.size() - 1);
        model.addAttribute("lastUser",lastuser);
        model.addAttribute("medics",medicsRepository.findAll());
        model.addAttribute("centers", centersRepository.findAll());
        return "medicsRegister";
    }

    @RequestMapping(value = "/medicsRegister", method = POST)
    public String addUser(Model model, @ModelAttribute Medics medics, @RequestParam(name="access")String access) {
        if(access.equals("1234")) {
            medicsRepository.saveAndFlush(medics);
            return "redirect:/";
        }
        return "redirect:/medicsRegisterFail";
    }
}

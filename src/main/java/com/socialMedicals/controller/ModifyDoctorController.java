package com.socialMedicals.controller;

import com.socialMedicals.entity.Medics;
import com.socialMedicals.entity.Patient;
import com.socialMedicals.repository.MedicsRepository;
import com.socialMedicals.repository.PatientRepository;
import com.socialMedicals.services.UpdateDoctor;
import com.socialMedicals.services.UpdatePatient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

/**
 * Created by yonay on 03/04/2017.
 */
@Controller
public class ModifyDoctorController {
    private final MedicsRepository medicsRepository;

    @Autowired
    public ModifyDoctorController(MedicsRepository medicsRepository){
        this.medicsRepository=medicsRepository;
    }

    @RequestMapping(value = "/modifyDoctor" , method = GET)
    public String modifyDoctor(Model model, HttpServletRequest httpServletRequest) {
        String email = (String)httpServletRequest.getSession().getAttribute("emaildoctor");
        Medics medics = medicsRepository.findByEmail(email);
        model.addAttribute("doctor", medics);
        return "modifyDoctor";
    }

    @RequestMapping(value = "/modifyDoctor", method = POST)
    public String modifyDoctorPOST(Model model,HttpServletRequest httpServletRequest, @ModelAttribute Medics medics) {
        String email = (String)httpServletRequest.getSession().getAttribute("emaildoctor");
        Medics medics1 = medicsRepository.findByEmail(email);
        medics1.update(medics);

        new UpdateDoctor(medicsRepository).execute(medics1);
        model.addAttribute("email",medics1.getEmail());
        model.addAttribute("name",medics1.getName());

        return "redirect:/doctorHome";
    }
}

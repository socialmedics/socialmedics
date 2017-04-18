package com.socialMedicals.controller;

import com.socialMedicals.entity.Patient;
import com.socialMedicals.repository.CenterRepository;
import com.socialMedicals.repository.PatientRepository;
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
public class ModifyPatientController {
    private final PatientRepository patientRepository;
    private final CenterRepository centerRepository;

    @Autowired
    public ModifyPatientController(PatientRepository patientRepository, CenterRepository centerRepository){
        this.patientRepository=patientRepository;
        this.centerRepository = centerRepository;
    }

    @RequestMapping(value = "/modifyPatient" , method = GET)
    public String modifyPatientGet(Model model, HttpServletRequest httpServletRequest) {
        Patient patient = (Patient)httpServletRequest.getSession().getAttribute("emailpatient");
        model.addAttribute("centers",centerRepository.findAll());
        model.addAttribute("patient", patient);
        return "modifyPatient";
    }

    @RequestMapping(value = "/modifyPatient", method = POST)
    public String getPatientMedicalHistory(Model model, HttpServletRequest httpServletRequest, @ModelAttribute Patient patient) {
        Patient patient1 = (Patient)httpServletRequest.getSession().getAttribute("emailpatient");
        patient1.update(patient);
        new UpdatePatient(patientRepository).execute(patient1);
        model.addAttribute("name",patient1.getName());
        model.addAttribute("email",patient1.getEmail());
        return "redirect:/welcomePatient";
    }
}

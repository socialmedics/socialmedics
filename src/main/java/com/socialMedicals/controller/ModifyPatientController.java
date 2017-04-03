package com.socialMedicals.controller;

import com.socialMedicals.entity.Patient;
import com.socialMedicals.repository.MedicsRepository;
import com.socialMedicals.repository.PatientRepository;
import com.socialMedicals.services.UpdatePatient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import static org.springframework.web.bind.annotation.RequestMethod.*;

/**
 * Created by yonay on 03/04/2017.
 */
@Controller
public class ModifyPatientController {
    private final PatientRepository patientRepository;

    @Autowired
    public ModifyPatientController(PatientRepository patientRepository){
        this.patientRepository=patientRepository;
    }

    @RequestMapping(value = "/modifyPatient" , method = GET)
    public String modifyPatientGet(Model model, HttpServletRequest httpServletRequest) {
        String email = (String)httpServletRequest.getSession().getAttribute("emailpatient");
        Patient patient = patientRepository.findByEmail(email);
        model.addAttribute("patient", patient);
        return "modifyPatient";
    }

    @RequestMapping(value = "/modifyPatient", method = POST)
    public String getPatientMedicalHistory(HttpServletRequest httpServletRequest, @ModelAttribute Patient patient) {
        String email = (String)httpServletRequest.getSession().getAttribute("emailpatient");
        Patient patient1 = patientRepository.findByEmail(email);
        patient1.setCenter(patient.getCenter());
        new UpdatePatient(patientRepository).execute(patient1);
        return "redirect:/modifyPatient";
    }
}

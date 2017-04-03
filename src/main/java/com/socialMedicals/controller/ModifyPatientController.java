package com.socialMedicals.controller;

import com.socialMedicals.repository.MedicsRepository;
import com.socialMedicals.repository.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

/**
 * Created by yonay on 03/04/2017.
 */
@Controller
public class ModifyPatientController {
    private final MedicsRepository medicsRepository;
    private final PatientRepository patientRepository;

    @Autowired
    public ModifyPatientController(MedicsRepository medicsRepository,PatientRepository patientRepository){
        this.medicsRepository=medicsRepository;
        this.patientRepository=patientRepository;
    }

    @RequestMapping(value = "/" , method = GET)
    public String modifyPatientGet(Model model, HttpServletRequest httpServletRequest) {
        String email = (String)httpServletRequest.getSession().getAttribute("emailpatient");
        return "index";
    }
}

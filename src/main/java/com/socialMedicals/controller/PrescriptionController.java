package com.socialMedicals.controller;

import com.socialMedicals.entity.Patient;
import com.socialMedicals.entity.Prescription;
import com.socialMedicals.repository.PrescriptionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;


@Controller
public class PrescriptionController {

    private PrescriptionRepository prescriptionRepository;

    @Autowired
    public PrescriptionController(PrescriptionRepository prescriptionRepository) {
        this.prescriptionRepository = prescriptionRepository;
    }

    @RequestMapping(value = "/prescriptionPatientView", method = GET)
    public String viewPatientListPrescription(Model model, HttpServletRequest httpServletRequest){
        Patient patient = (Patient) httpServletRequest.getSession().getAttribute("emailpatient");
        model.addAttribute("prescriptionList", prescriptionRepository.findByEmail(patient.getEmail()));
        return "prescriptionPatientView";
    }

    @RequestMapping(value = "/prescriptionPatientView", method = POST)
    public String viewPatientPrescription(@RequestParam(name = "date", required = false)String date,@RequestParam(name = "time", required = false)String time,
                                          Model model, HttpServletRequest httpServletRequest){
        model.addAttribute("prescription", prescriptionRepository.findByHistorydateAndHistorytime(date, time));
        return "prescriptionView";
    }

}

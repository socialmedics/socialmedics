package com.socialMedicals.controller;

import com.socialMedicals.entity.Date;
import com.socialMedicals.entity.Medics;
import com.socialMedicals.repository.DateRepository;
import com.socialMedicals.repository.MedicsRepository;
import com.socialMedicals.services.UpdateDate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

import java.util.ArrayList;
import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class ChangeDoctorController {
    private final MedicsRepository medicsRepository;
    private final DateRepository dateRepository;

    @Autowired
    public ChangeDoctorController(MedicsRepository medicsRepository, DateRepository dateRepository) {
        this.medicsRepository = medicsRepository;
        this.dateRepository = dateRepository;
    }

    @RequestMapping(value = "/changeDoctor", method = GET)
    public String selectDoctors(Model model, HttpServletRequest httpServletRequest) {
        Medics medics = (Medics)httpServletRequest.getSession().getAttribute("emaildoctor");
        model.addAttribute("center",medics.getCenter());
        List<Medics> medicsList = new ArrayList<>();
        for (Medics medics1: medicsRepository.findAll()) {
            if(!medics.toString().equals(medics1.toString())){
                medicsList.add(medics1);
            }
        }
        model.addAttribute("medics",medicsList);
        return "viewDoctors";
    }

    @RequestMapping(value = "/changeDoctor", method = POST)
    public String changeDoctor(@RequestParam(name = "medics") String medics,
                               HttpServletRequest httpServletRequest){

        Medics medics1 = (Medics)httpServletRequest.getSession().getAttribute("emaildoctor");
        for (Date date: dateRepository.findByDoctor(medics1.getName())) {
          date.setDoctor(medics);
          new UpdateDate(dateRepository).updateAccepted(date);
        }

        return "redirect:/viewAppointment";
    }

}

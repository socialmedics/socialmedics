package com.socialMedicals.controller;

import com.socialMedicals.repository.MedicsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

/**
 * Created by yonay on 30/03/2017.
 */
@Controller
public class MedicsKeyFailController {

    private final MedicsRepository medicsRepository;

    @Autowired
    public MedicsKeyFailController(MedicsRepository medicsRepository) {
        this.medicsRepository=medicsRepository;
    }

    @RequestMapping(value = "/medicsRegisterFail" , method = GET)
    public String keyFail(Model model) {
        return "medicsKeyFail";
    }



}

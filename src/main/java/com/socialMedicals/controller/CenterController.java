package com.socialMedicals.controller;

import com.socialMedicals.entity.Center;
import com.socialMedicals.repository.CenterRepository;
import com.socialMedicals.services.CreateCenter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class CenterController {

    private final CenterRepository centerRepository;

    @Autowired
    public CenterController(CenterRepository centerRepository) {
        this.centerRepository = centerRepository;
    }

    @RequestMapping(value = "/centerForm", method = GET)
    public String centerForm (Model model) {
        model.addAttribute("centers", centerRepository.findAll());
        return "centerForm";
    }

    @RequestMapping(value = "/centerForm", method = POST)
    public String centerRegister (@ModelAttribute Center center) {
        new CreateCenter(centerRepository).execute(center);
        return "redirect:/centerForm";
    }
}

package com.socialMedicals.controller;

import com.socialMedicals.entity.Medics;
import com.socialMedicals.entity.TimeTable;
import com.socialMedicals.repository.MedicsRepository;
import com.socialMedicals.repository.TimeTableRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.ArrayList;
import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.*;

@Controller
public class TimeTableController {
    private final TimeTableRepository timeTableRepository;
    private final MedicsRepository medicsRepository;

    @Autowired
    public TimeTableController(TimeTableRepository timeTableRepository, MedicsRepository medicsRepository) {
        this.timeTableRepository = timeTableRepository;
        this.medicsRepository = medicsRepository;
    }

    @RequestMapping(value = "/timetable/{medicId}", method = GET)
    public String index (@PathVariable(name = "medicId") int medicId, Model model) {
        Medics medic = medicsRepository.findById(medicId);
        List<TimeTable> timeTables = timeTableRepository.findByMedicId(medicId);
        model.addAttribute("medic", medic);
        model.addAttribute("timeTables", timeTables != null ? timeTables : new ArrayList<TimeTable>());
        return "timeTable";
    }

    @RequestMapping(value = "/timetable/create", method = POST)
    public String create (TimeTable timeTable) {
        this.timeTableRepository.saveAndFlush(timeTable);
        return "redirect:/timetable/" + timeTable.getMedicId();
    }

    @RequestMapping(value = "/timetable/delete/{id}", method = GET)
    public String delete (@PathVariable(name = "id") int id) {
        TimeTable timeTable = timeTableRepository.findById(id);
        this.timeTableRepository.delete(id);
        return "redirect:/timetable/" + timeTable.getMedicId();
    }
}

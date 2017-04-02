package com.socialMedicals.controller;

import com.socialMedicals.entity.Appointment;
import com.socialMedicals.entity.Patient;
import com.socialMedicals.entity.Users;
import com.socialMedicals.repository.AppointmentRepository;
import com.socialMedicals.repository.PatientRepository;
import com.socialMedicals.repository.UsuariosRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

import java.util.ArrayList;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;


@Controller
public class AppointmentController {

    private final AppointmentRepository appointmentRepository;
    private final UsuariosRepository usuariosRepository;


    @Autowired
    public AppointmentController(AppointmentRepository appointmentRepository, UsuariosRepository usuariosRepository) {
        this.appointmentRepository = appointmentRepository;
        this.usuariosRepository = usuariosRepository;
    }

    @RequestMapping(value = "/registerAppointment", method = GET)
    public String findAllUser(HttpSession session, Model model){
        ArrayList<Appointment> appointmentList = appointmentRepository.findByEmail((String) session.getAttribute("emailpatient"));
        model.addAttribute("appointments", appointmentList);
        return "registerAppointment";
    }

    @RequestMapping(value = "/registerAppointment", method = POST)
    public String addUser(HttpSession session, Model model
                        , @RequestParam(name = "doctor")String doctor, @RequestParam(name = "appointmentdate")String date
                        , @RequestParam(name = "appointmenttime")String time){
        Appointment appointment = new Appointment();
        appointment.setAppointmentdate(date);
        appointment.setAppointmenttime(time);
        appointment.setDoctor(doctor);
        String email = (String) session.getAttribute("emailpatient");
        appointment.setEmail(email);
        appointmentRepository.saveAndFlush(appointment);
        return "registerAppointment";
    }

    private Users getUsers(@RequestParam(name = "name") String name, @RequestParam(name = "surname") String surname, @RequestParam(name = "email") String email, @RequestParam(name = "password") String password, @RequestParam(name = "center") String center, String type) {
        Users users = new Users();
        users.setName(name);
        users.setSurname(surname);
        users.setCenter(center);
        users.setEmail(email);
        users.setPassword(password);
        users.setType(type);
        return users;
    }

}

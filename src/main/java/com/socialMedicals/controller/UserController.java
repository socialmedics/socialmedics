package com.socialMedicals.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import com.socialMedicals.entity.User;
import com.socialMedicals.repository.UserRepository;
import org.springframework.web.bind.annotation.ResponseStatus;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import static org.springframework.http.HttpStatus.CREATED;



@Controller
public class UserController {

    private final UserRepository userRepository;

    @Autowired
    public UserController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @RequestMapping(path = "/users", method = GET)
    public String findAllUser(Model model){
        model.addAttribute("users", userRepository.findAll());
        return "users";
    }

    @RequestMapping(path = "/users", method = POST)
    @ResponseStatus(code = CREATED)
    public void addUser(@RequestBody User user){
        userRepository.saveAndFlush(user);
    }
}

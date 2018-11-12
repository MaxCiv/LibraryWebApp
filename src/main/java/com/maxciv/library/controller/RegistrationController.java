package com.maxciv.library.controller;

import com.maxciv.library.model.Role;
import com.maxciv.library.model.entity.User;
import com.maxciv.library.model.repository.UserRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Collections;
import java.util.Map;

/**
 * @author maxim.oleynik
 * @since 12.11.2018
 */
@Controller
@Slf4j
public class RegistrationController {

    private final UserRepository userRepository;

    @Autowired
    public RegistrationController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping("/registration")
    public String getRegistration() {
        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(User user, Map<String, Object> model) {
        User userFromDb = userRepository.findByUsername(user.getUsername());
        if (userFromDb != null) {
            model.put("message", "User already exists.");
            return "registration";
        }

        user.setActive(true);
        user.setRoles(Collections.singleton(Role.COMMON_USER));
        userRepository.save(user);

        return "redirect:/login";
    }
}

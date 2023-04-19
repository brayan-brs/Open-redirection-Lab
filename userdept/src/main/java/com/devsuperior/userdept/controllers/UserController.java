package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/login")
    public String login(@RequestParam String username, @RequestParam String password, Model model) {
        if ("Usuario".equals(username) && "senha".equals(password)) {
            return "redirect:/home";
        } else {
            model.addAttribute("error", "Usuário ou senha incorretos");
            return "login";
        }
    }

    @GetMapping("/login-error")
    public String loginError(Model model) {
        model.addAttribute("error", "Usuário ou senha incorretos");
        return "login";
    }
}

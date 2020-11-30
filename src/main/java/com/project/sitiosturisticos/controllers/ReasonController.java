package com.project.sitiosturisticos.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/razones")
public class ReasonController {
    
    @GetMapping("")
    public String index(@RequestParam(name="name", required=false, defaultValue="World") String name, Model model) {
        return "razones";
    }
}
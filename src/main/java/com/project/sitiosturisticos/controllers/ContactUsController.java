package com.project.sitiosturisticos.controllers;

import java.util.List;

import com.project.sitiosturisticos.models.Site;
import com.project.sitiosturisticos.services.interfaces.IContactForm;
import com.project.sitiosturisticos.services.interfaces.ISite;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/contactanos")
public class ContactUsController {

    @Autowired
    IContactForm contactService;

    @GetMapping("")
    public String site() {
        return "contactanos";
    }
    @Autowired
	ISite siteService;

    @PostMapping("")
    public String sendContact(Model model) {

        model.addAttribute("message",
                "Gracias por contactarnos, en breve te llegara un correo confirmando tu consulta");

        List<Site> listaSitios = siteService.findAll();

        model.addAttribute("sitios", listaSitios);

        return "contactanos";
    }
}

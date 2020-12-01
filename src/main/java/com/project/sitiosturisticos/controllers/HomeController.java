package com.project.sitiosturisticos.controllers;

import java.util.List;

import com.project.sitiosturisticos.models.Site;
import com.project.sitiosturisticos.repositories.SiteRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

	@Autowired
	SiteRepository sitesRepo;

	@GetMapping("")
	public String index(@RequestParam(name="name", required=false, defaultValue="World") String name, Model model) {
		List<Site> listaSitios = sitesRepo.findAll();
		// System.out.println(listaSitios.toString());
		// model.addAttribute("name", name);
		model.addAttribute("sitios", listaSitios);
		return "index";
	}

}
package com.project.sitiosturisticos.controllers;

import java.util.List;

import com.project.sitiosturisticos.models.Review;
import com.project.sitiosturisticos.models.Site;
import com.project.sitiosturisticos.services.interfaces.IReview;
import com.project.sitiosturisticos.services.interfaces.ISite;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/sitio")
public class SiteController {

    @Autowired
    ISite siteService;

    @Autowired
    IReview reviewService;

    @GetMapping("")
    public String site(@RequestParam String id, Model model) {
        try {
            // service layer
            Site site = siteService.findById(Integer.parseInt(id));
            List<Review> reviews = reviewService.findBySiteId(Integer.parseInt(id));

            // add to model
            model.addAttribute("site", site);
            model.addAttribute("reviews", reviews);

            // redirect
            return "sitio";
            
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return "404";
        }
    }
}

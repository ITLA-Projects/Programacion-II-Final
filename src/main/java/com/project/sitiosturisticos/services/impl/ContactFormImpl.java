package com.project.sitiosturisticos.services.impl;

import com.project.sitiosturisticos.models.ContactForm;
import com.project.sitiosturisticos.repositories.ContactFormRepository;
import com.project.sitiosturisticos.services.interfaces.IContactForm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContactFormImpl implements IContactForm {

    @Autowired
    ContactFormRepository repo;

    @Override
    public Boolean Create(ContactForm entity) {
        try {
            repo.save(entity);
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }

}

package com.project.sitiosturisticos.repositories;

import com.project.sitiosturisticos.models.ContactForm;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ContactFormRepository extends JpaRepository<ContactForm, Integer> {
    
}

package com.project.sitiosturisticos.repositories;

import com.project.sitiosturisticos.models.Sitio;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SitioRepository extends JpaRepository<Sitio, Integer> {
    
}

package com.project.sitiosturisticos.repositories;

import com.project.sitiosturisticos.models.Site;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SiteRepository extends JpaRepository<Site, Integer> {
    
}

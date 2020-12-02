package com.project.sitiosturisticos.services.impl;

import java.util.List;

import com.project.sitiosturisticos.models.Site;
import com.project.sitiosturisticos.repositories.SiteRepository;
import com.project.sitiosturisticos.services.interfaces.ISite;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class SiteImpl implements ISite {

    @Autowired
    SiteRepository repo;

    @Override
    @Transactional
    public List<Site> findAll() {
        return repo.findAll();
    }
    
    @Override
    @Transactional
    public Site findById(int id) {
        return repo.findById(id).get();
    }

}

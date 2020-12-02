package com.project.sitiosturisticos.services.interfaces;

import java.util.List;

import com.project.sitiosturisticos.models.Site;

public interface ISite {

    List<Site> findAll();

    Site findById(int id);
}

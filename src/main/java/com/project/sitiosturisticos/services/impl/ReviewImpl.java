package com.project.sitiosturisticos.services.impl;

import java.util.List;

import com.project.sitiosturisticos.models.Review;
import com.project.sitiosturisticos.repositories.ReviewRepository;
import com.project.sitiosturisticos.services.interfaces.IReview;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewImpl implements IReview {

    @Autowired
    ReviewRepository repo;

    @Override
    public List<Review> findBySiteId(int id) {
        return repo.findBySiteId(id);
    }
    
}

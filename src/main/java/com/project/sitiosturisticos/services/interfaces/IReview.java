package com.project.sitiosturisticos.services.interfaces;

import java.util.List;

import com.project.sitiosturisticos.models.Review;

public interface IReview {
    public List<Review> findBySiteId(int id);
}

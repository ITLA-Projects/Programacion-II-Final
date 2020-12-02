package com.project.sitiosturisticos.repositories;

import com.project.sitiosturisticos.models.Review;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReviewRepository extends JpaRepository<Review, Integer> {
    
}

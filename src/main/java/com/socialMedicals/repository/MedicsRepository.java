package com.socialMedicals.repository;

import com.socialMedicals.entity.Medics;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface MedicsRepository extends JpaRepository<Medics,Integer> {
    Medics findByEmail(String email);

}

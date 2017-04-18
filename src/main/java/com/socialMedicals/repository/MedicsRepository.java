package com.socialMedicals.repository;

import com.socialMedicals.entity.Medics;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface MedicsRepository extends JpaRepository<Medics,Integer> {
    Medics findByEmail(String email);

    List<Medics> findByCenter(String center);

}

package com.socialMedicals.repository;

import com.socialMedicals.entity.Prescription;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PrescriptionRepository extends JpaRepository<Prescription, Integer>{
    List<Prescription> findByEmail(String email);
    Prescription findByHistorydateAndHistorytime(String date, String time);
}

package com.socialMedicals.repository;


import com.socialMedicals.entity.MedicalHistory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MedicalHistoryRepository extends JpaRepository<MedicalHistory, Integer>{
    MedicalHistory findByEmail(String email);

}

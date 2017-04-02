package com.socialMedicals.repository;


import com.socialMedicals.entity.MedicalHistory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MedicalHistoryRepository extends JpaRepository<MedicalHistory, Integer>{
    List<MedicalHistory> findByEmail(String email);
    MedicalHistory findHistoryByEmail(String email);
    MedicalHistory findHistoryByHistorydateAndHistorytime(String date, String time);
    List<String> findByName(String name);
}

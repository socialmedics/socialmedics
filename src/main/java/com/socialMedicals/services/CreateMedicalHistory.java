package com.socialMedicals.services;

import com.socialMedicals.entity.MedicalHistory;
import com.socialMedicals.repository.MedicalHistoryRepository;
import org.springframework.beans.factory.annotation.Autowired;

public class CreateMedicalHistory {
    private final MedicalHistoryRepository medicalHistoryRepository;

    @Autowired
    public CreateMedicalHistory(MedicalHistoryRepository medicalHistoryRepository) {

        this.medicalHistoryRepository = medicalHistoryRepository;
    }

    public void execute(MedicalHistory medicalHistory) {
        medicalHistoryRepository.saveAndFlush(medicalHistory);
    }
}

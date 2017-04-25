package com.socialMedicals.services;

import com.socialMedicals.entity.Prescription;
import com.socialMedicals.repository.PrescriptionRepository;
import org.springframework.beans.factory.annotation.Autowired;

public class CreatePrescription {
    private final PrescriptionRepository prescriptionRepository;

    @Autowired
    public CreatePrescription(PrescriptionRepository prescriptionRepository) {

        this.prescriptionRepository = prescriptionRepository;
    }

    public void execute(Prescription prescription) {
        prescriptionRepository.saveAndFlush(prescription);
    }
}

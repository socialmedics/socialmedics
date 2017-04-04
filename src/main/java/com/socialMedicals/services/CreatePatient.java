package com.socialMedicals.services;

import com.socialMedicals.entity.Patient;
import com.socialMedicals.repository.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by yonay on 03/04/2017.
 */
public class CreatePatient {
    private final PatientRepository patientRepository;

    @Autowired
    public CreatePatient(PatientRepository patientRepository) {

        this.patientRepository = patientRepository;
    }

    public void execute(Patient patient){
        patientRepository.saveAndFlush(patient);
    }
}

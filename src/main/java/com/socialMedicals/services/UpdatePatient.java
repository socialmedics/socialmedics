package com.socialMedicals.services;

import com.socialMedicals.entity.Patient;
import com.socialMedicals.repository.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by yonay on 03/04/2017.
 */
@Service("UpdatePatient")
public class UpdatePatient {
    private final PatientRepository patientRepository;
    @Autowired
    public UpdatePatient(PatientRepository patientRepository){
        this.patientRepository=patientRepository;
    }

    public void execute(Patient patient) {
        patientRepository.saveAndFlush(patient);
    }
}

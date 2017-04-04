package com.socialMedicals.services;

import com.socialMedicals.entity.Medics;
import com.socialMedicals.repository.MedicsRepository;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by yonay on 03/04/2017.
 */
public class CreateDoctor {
    private final MedicsRepository medicsRepository;

    @Autowired
    public CreateDoctor(MedicsRepository medicsRepository) {

        this.medicsRepository = medicsRepository;
    }

    public void execute(Medics medics) {
        medicsRepository.saveAndFlush(medics);
    }
}

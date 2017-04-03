package com.socialMedicals.services;

import com.socialMedicals.entity.Medics;
import com.socialMedicals.repository.MedicsRepository;

/**
 * Created by yonay on 03/04/2017.
 */
public class CreateDoctor {
    private final MedicsRepository medicsRepository;

    public CreateDoctor(MedicsRepository medicsRepository) {

        this.medicsRepository = medicsRepository;
    }

    public void execute(Medics medics) {
        medicsRepository.saveAndFlush(medics);
    }
}

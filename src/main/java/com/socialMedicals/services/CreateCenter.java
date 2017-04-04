package com.socialMedicals.services;

import com.socialMedicals.entity.Center;
import com.socialMedicals.repository.CenterRepository;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by yonay on 03/04/2017.
 */
public class CreateCenter {
    private final CenterRepository centerRepository;

    @Autowired
    public CreateCenter(CenterRepository centerRepository) {

        this.centerRepository = centerRepository;
    }

    public void execute(Center center) {
        centerRepository.saveAndFlush(center);
    }
}

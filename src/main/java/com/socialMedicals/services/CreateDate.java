package com.socialMedicals.services;

import com.socialMedicals.entity.Date;
import com.socialMedicals.repository.DateRepository;
import org.springframework.beans.factory.annotation.Autowired;

public class CreateDate {
    private final DateRepository dateRepository;

    @Autowired
    public CreateDate(DateRepository dateRepository) {
        this.dateRepository = dateRepository;
    }

    public void execute(Date date) {
        dateRepository.saveAndFlush(date);
    }
}

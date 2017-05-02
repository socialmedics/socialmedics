package com.socialMedicals.services;

import com.socialMedicals.entity.Date;
import com.socialMedicals.repository.DateRepository;
import org.springframework.beans.factory.annotation.Autowired;

public class UpdateDate {

    private final DateRepository dateRepository;

    @Autowired
    public UpdateDate(DateRepository dateRepository) {
        this.dateRepository = dateRepository;
    }

    public void update(Date date){
        dateRepository.saveAndFlush(date);
    }

}

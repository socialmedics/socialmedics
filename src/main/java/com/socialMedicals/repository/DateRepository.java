package com.socialMedicals.repository;

import com.socialMedicals.entity.Medics;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.socialMedicals.entity.Date;

import java.util.List;

@Repository
public interface DateRepository extends JpaRepository<Date, Integer> {
    List<Date> findByDoctor(String doctor);

    Date findById(int id);
    void delete(int id);
}

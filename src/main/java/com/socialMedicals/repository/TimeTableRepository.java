package com.socialMedicals.repository;


import com.socialMedicals.entity.TimeTable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TimeTableRepository extends JpaRepository<TimeTable, Integer> {

    List<TimeTable> findByMedicId(int medicId);

    TimeTable findById(int id);
}

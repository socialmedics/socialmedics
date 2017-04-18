package com.socialMedicals.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.socialMedicals.entity.Date;

@Repository
public interface DateRepository extends JpaRepository<Date, Integer> {
}

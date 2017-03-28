package com.socialMedicals.repository;

import com.socialMedicals.entity.Patient;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by yonay on 28/03/2017.
 */
@Repository
public interface UsuariosRepository extends JpaRepository<Patient,Integer> {
}

package com.socialMedicals.repository;

import com.socialMedicals.entity.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface UsuariosRepository extends JpaRepository<Users, Integer> {
    Users findByEmail(String email);
}

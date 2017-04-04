package com.socialMedicals.repository;

import com.socialMedicals.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface UsuariosRepository extends JpaRepository<User, Integer> {
    User findByEmail(String email);
}

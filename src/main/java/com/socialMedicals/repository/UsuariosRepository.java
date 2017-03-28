package com.socialMedicals.repository;

import com.socialMedicals.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by yonay on 28/03/2017.
 */
@Repository
public interface UsuariosRepository extends JpaRepository<User,Integer> {
}

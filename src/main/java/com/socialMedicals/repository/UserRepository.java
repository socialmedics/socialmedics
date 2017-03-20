package com.socialMedicals.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.socialMedicals.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User,Long> {
}

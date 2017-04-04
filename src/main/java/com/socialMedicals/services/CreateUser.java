package com.socialMedicals.services;

import com.socialMedicals.entity.User;
import com.socialMedicals.repository.UsuariosRepository;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by yonay on 03/04/2017.
 */
public class CreateUser {
    private final UsuariosRepository usuariosRepository;

    @Autowired
    public CreateUser(UsuariosRepository usuariosRepository) {

        this.usuariosRepository = usuariosRepository;
    }

    public void execute(User user) {
        usuariosRepository.saveAndFlush(user);
    }
}

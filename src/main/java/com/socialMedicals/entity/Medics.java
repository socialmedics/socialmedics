package com.socialMedicals.entity;

import javax.persistence.*;


@Entity
@Table(name = "medicos")
public class Medics {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private String surname;
    private String email;
    private String center;
    private String especialidad;
    private String password;
    private String access;

    public void setAccess(String access) {
        this.access = access;
    }

    public String getAccess() {
        return access;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setCenter(String center) {
        this.center = center;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getCenter() {
        return center;
    }

    public String getSurname() {
        return surname;
    }

    public String getEspecialidad() {
        return especialidad;
    }

    public String getPassword() {
        return password;
    }
}

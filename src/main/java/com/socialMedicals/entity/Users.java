package com.socialMedicals.entity;

import javax.persistence.*;

/**
 * Created by yonay on 28/03/2017.
 */
@Entity
@Table(name = "usuarios")
public class Users {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;



    private String type;
    private String email;
    private String center;
    private String password;
    private String surname;

    public int getId() {

        return id;
    }

    public String getName() {
        return name;
    }
    public String getType() {
        return type;
    }

    public String getEmail() {
        return email;
    }

    public String getCenter() {
        return center;
    }

    public String getPassword() {
        return password;
    }

    public String getSurname() {
        return surname;
    }

    public void setId(int id) {
        this.id = id;
    }
    public void setType(String type) {
        this.type = type;
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

    public void setPassword(String password) {
        this.password = password;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }
}

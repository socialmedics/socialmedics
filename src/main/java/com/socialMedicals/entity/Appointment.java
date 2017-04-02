package com.socialMedicals.entity;

import javax.persistence.*;

/**
 * Created by Nick on 02/04/2017.
 */
@Entity
@Table(name = "appointment")
public class Appointment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String appointmentdate;
    private String appointmenttime;
    private String doctor;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAppointmentdate() {
        return appointmentdate;
    }

    public void setAppointmentdate(String appointmentdate) {
        this.appointmentdate = appointmentdate;
    }

    public String getAppointmenttime() {
        return appointmenttime;
    }

    public void setAppointmenttime(String appointmenttime) {
        this.appointmenttime = appointmenttime;
    }

    public String getDoctor() {
        return doctor;
    }

    public void setDoctor(String doctor) {
        this.doctor = doctor;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    private String email;
}

package com.socialMedicals.entity;

import javax.persistence.*;

@Entity
@Table(name = "dates")
public class Date {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private Boolean accepted;


    private String doctor;
    private String patientemail;
    private String patientname;
    private Boolean change;

    private String day;
    private String center;
    private String hour;

    public Boolean getChange() {
        return change;
    }

    public void setChange(Boolean change) {
        this.change = change;
    }

    public Boolean getAccepted() {
        return accepted;
    }

    public void setAccepted(Boolean accepted) {
        this.accepted = accepted;
    }

    public String getHour() {
        return hour;
    }

    public void setHour(String hour) {
        this.hour = hour;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Date{" +
                "id=" + id +
                ", accepted=" + accepted +
                ", doctor='" + doctor + '\'' +
                ", patientemail='" + patientemail + '\'' +
                ", patientname='" + patientname + '\'' +
                ", change=" + change +
                ", day='" + day + '\'' +
                ", center='" + center + '\'' +
                ", hour='" + hour + '\'' +
                '}';
    }

    public String getPatientemail() {
        return patientemail;
    }

    public void setPatientemail(String patientemail) {
        this.patientemail = patientemail;
    }

    public String getPatientname() {
        return patientname;
    }

    public void setPatientname(String patientname) {
        this.patientname = patientname;
    }

    public String getDoctor() {
        return doctor;
    }

    public void setDoctor(String doctor) {
        this.doctor = doctor;
    }


    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public String getCenter() {
        return center;
    }

    public void setCenter(String center) {
        this.center = center;
    }

    public void update(Patient patient) {
        this.setPatientemail(patient.getEmail());
        this.setPatientname(patient.getName());
        this.setAccepted(false);
        this.setChange(false);
    }
}

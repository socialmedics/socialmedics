package com.socialMedicals.entity;

import javax.persistence.*;

@Entity
@Table(name = "medicalhistory")
public class MedicalHistory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private int id;
    private String name;
    private String sex;
    private String borndate;
    private String nationality;
    private String birthplace;
    private String historydate;
    private String historytime;
    private String doctor;
    private String email;
    private String allergy;
    private String illness;
    private String diagnosis;
    private String department;

    public String getAllergy() {
        return allergy;
    }

    public void setAllergy(String allergy) {
        this.allergy = allergy;
    }

    public String getIllness() {
        return illness;
    }

    public void setIllness(String illness) {
        this.illness = illness;
    }

    public String getDiagnosis() {
        return diagnosis;
    }

    public void setDiagnosis(String diagnosis) {
        this.diagnosis = diagnosis;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getBorndate() {
        return borndate;
    }

    public void setBorndate(String borndate) {
        this.borndate = borndate;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getBirthplace() {
        return birthplace;
    }

    public void setBirthplace(String birthplace) {
        this.birthplace = birthplace;
    }

    public String getHistorydate() {
        return historydate;
    }

    public void setHistorydate(String historydate) {
        this.historydate = historydate;
    }

    public String getHistorytime() {
        return historytime;
    }

    public void setHistorytime(String historytime) {
        this.historytime = historytime;
    }

    public String getDoctor() {
        return doctor;
    }

    public void setDoctor(String doctor) {
        this.doctor = doctor;
    }

    @Override
    public String toString() {
        return "MedicalHistory{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", borndate='" + borndate + '\'' +
                ", nationality='" + nationality + '\'' +
                ", birthplace='" + birthplace + '\'' +
                ", historydate='" + historydate + '\'' +
                ", historytime='" + historytime + '\'' +
                ", doctor='" + doctor + '\'' +
                '}';
    }
}

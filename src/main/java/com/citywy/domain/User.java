package com.citywy.domain;

import java.util.Date;

public class User {
    private int id;
    private String name;
    private int age;
    private String address;
    private String email;
    private Date birtyDay;
    private String password;

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

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getBirtyDay() {
        return birtyDay;
    }

    public void setBirtyDay(Date birtyDay) {
        this.birtyDay = birtyDay;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}

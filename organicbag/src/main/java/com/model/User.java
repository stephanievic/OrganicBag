package com.model;

public class User {
    private long cpf;
    private String name;
    private String email;
    private String phone;
    private String profile;
    private String password;

    public User() {
        super();
    }

    public User(long cpf, String name, String email, String phone, String profile, String password) {
        super();    
        this.cpf = cpf;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.profile = profile;
        this.password = password;
    }

    public long getCpf() {
        return cpf;
    }

    public void setCpf(long cpf) {
        this.cpf = cpf;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}

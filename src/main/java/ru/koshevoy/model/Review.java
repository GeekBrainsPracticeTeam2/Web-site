package ru.koshevoy.model;


public class Review {
    private String name;
    private String company;
    private String email;
    private String message;

    public Review() {
    }

    public Review(String name, String company, String email, String message) {
        this.name = name;
        this.company = company;
        this.email = email;
        this.message = message;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}

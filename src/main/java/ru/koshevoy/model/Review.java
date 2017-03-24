package ru.koshevoy.model;


public class Review {
    private String Name;
    private String Company;
    private String email;
    private String Message;

    public Review() {
    }

    public Review(String name, String company, String email, String message) {
        Name = name;
        Company = company;
        this.email = email;
        Message = message;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getCompany() {
        return Company;
    }

    public void setCompany(String company) {
        Company = company;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMessage() {
        return Message;
    }

    public void setMessage(String message) {
        Message = message;
    }
}

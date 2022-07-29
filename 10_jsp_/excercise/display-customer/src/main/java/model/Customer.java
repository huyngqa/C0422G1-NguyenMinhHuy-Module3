package model;

import java.time.LocalDate;

public class Customer {
    private String name;
    private LocalDate date;
    private String address;
    private String image;

    public Customer() {
    }

    public Customer(String name, LocalDate date, String address, String image) {
        this.name = name;
        this.date = date;
        this.address = address;
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}

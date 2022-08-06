package model;

import java.time.LocalDate;

public abstract class Person {
    private int personId;
    private String name;
    private LocalDate dateOfBirth;
    private String identityCardNumber;
    private String tel;
    private String email;
    private String address;

    public Person() {
    }

    public Person(int personId, String name, LocalDate dateOfBirth, String identityCardNumber, String tel, String email, String address) {
        this.personId = personId;
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.identityCardNumber = identityCardNumber;
        this.tel = tel;
        this.email = email;
        this.address = address;
    }

    public int getPersonId() {
        return personId;
    }

    public void setPersonId(int personId) {
        this.personId = personId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(LocalDate dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getIdentityCardNumber() {
        return identityCardNumber;
    }

    public void setIdentityCardNumber(String identityCardNumber) {
        this.identityCardNumber = identityCardNumber;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}

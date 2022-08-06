package model;

import java.time.LocalDate;

public class Customer extends Person {
    private TypeCustomer typeCustomerName;
    private boolean gender;

    public Customer() {
    }

    public Customer(int personId, String name, LocalDate dateOfBirth, String identityCardNumber, String tel, String email, String address, TypeCustomer typeCustomerName, boolean gender) {
        super(personId, name, dateOfBirth, identityCardNumber, tel, email, address);
        this.typeCustomerName = typeCustomerName;
        this.gender = gender;
    }

    public TypeCustomer getTypeCustomerName() {
        return typeCustomerName;
    }

    public void setTypeCustomerName(TypeCustomer typeCustomerName) {
        this.typeCustomerName = typeCustomerName;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }
}

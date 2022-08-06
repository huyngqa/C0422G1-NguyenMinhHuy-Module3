package service;

import model.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> findAllCustomer();
    boolean addNewCustomer(Customer customer);
    boolean editCustomer(Customer customer);
    Customer findCustomerById(int customerId);
}

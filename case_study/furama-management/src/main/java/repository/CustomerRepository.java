package repository;

import model.Customer;

import java.util.List;

public interface CustomerRepository {
    List<Customer> findAllCustomer();
    boolean addNewCustomer(Customer customer);
    boolean editCustomer(Customer customer);
    Customer findCustomerById(int customerId);
    boolean deleteCustomerById(int customerId);
    List<Customer> searchCustomerByName(String search);
}

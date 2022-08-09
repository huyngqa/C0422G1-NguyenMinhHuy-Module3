package service;

import model.Customer;

import java.util.List;
import java.util.Map;

public interface CustomerService {
    List<Customer> findAllCustomer();
    Map<String, String> addNewCustomer(Customer customer);
    Map<String, String> editCustomer(Customer customer);
    Customer findCustomerById(int customerId);
    boolean deleteCustomerById(int customerId);
    List<Customer> searchCustomerByName(String search);
}

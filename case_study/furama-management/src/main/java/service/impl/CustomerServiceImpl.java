package service.impl;

import model.Customer;
import repository.CustomerRepository;
import repository.impl.CustomerRepositoryImpl;
import service.CustomerService;

import java.util.List;

public class CustomerServiceImpl implements CustomerService {
    private CustomerRepository customerRepository = new CustomerRepositoryImpl();

    @Override
    public List<Customer> findAllCustomer() {
        return customerRepository.findAllCustomer();
    }

    @Override
    public boolean addNewCustomer(Customer customer) {
        return customerRepository.addNewCustomer(customer);
    }

    @Override
    public boolean editCustomer(Customer customer) {
        return customerRepository.editCustomer(customer);
    }

    @Override
    public Customer findCustomerById(int customerId) {
        return customerRepository.findCustomerById(customerId);
    }

    @Override
    public boolean deleteCustomerById(int customerId) {
        return customerRepository.deleteCustomerById(customerId);
    }

    @Override
    public List<Customer> searchCustomerByName(String search) {
        return customerRepository.searchCustomerByName(search);
    }
}

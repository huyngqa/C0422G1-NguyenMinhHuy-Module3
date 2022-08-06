package service.impl;

import model.Customer;
import repository.CustomerRepository;
import repository.impl.CustomerRepositoryImpl;
import service.CustomerService;

import java.util.List;

public class CustomerServiceImpl implements CustomerService {
    CustomerRepository customerRepository = new CustomerRepositoryImpl();
    @Override
    public List<Customer> findAllCustomer() {
        return customerRepository.findAllCustomer();
    }

    @Override
    public boolean addNewCustomer(Customer customer) {
        return false;
    }

    @Override
    public boolean editCustomer(Customer customer) {
        return false;
    }

    @Override
    public Customer findCustomerById(int customerId) {
        return null;
    }
}

package service.impl;

import model.Customer;
import repository.CustomerRepository;
import repository.impl.CustomerRepositoryImpl;
import service.CustomerService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceImpl implements CustomerService {
    private final String REGEX_NAME = "^[A-Z][a-z]{0,6}(\\s[A-Z][a-z]{0,6}){0,4}$";
    private final String REGEX_TEL = "^((090|091)\\d{7})|((\\(84\\)\\+)(90)\\d{7})|((\\(84\\)\\+)(91)\\d{7})$";
    private final String REGEX_ID_CARD = "^\\d{9}|\\d{12}$";
    private final String REGEX_EMAIL = "^\\w+@+\\w+(\\.\\w+){1,2}$";

    private CustomerRepository customerRepository = new CustomerRepositoryImpl();

    @Override
    public List<Customer> findAllCustomer() {
        return customerRepository.findAllCustomer();
    }

    @Override
    public Map<String, String> addNewCustomer(Customer customer) {
        Map<String, String> errMap = validate(customer);
        if(errMap.isEmpty()) {
            customerRepository.addNewCustomer(customer);
        }
        return errMap;
    }

    @Override
    public Map<String, String> editCustomer(Customer customer) {
        Map<String, String> errMap = validate(customer);
        if(errMap.isEmpty()) {
            customerRepository.editCustomer(customer);
        }
        return errMap;
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

    private Map<String, String> validate(Customer customer) {
        Map<String, String> errMap = new HashMap<>();
        if (!customer.getName().isEmpty()) {
            if (!customer.getName().matches(REGEX_NAME)) {
                errMap.put("nameErr", "Please input error format! Example: Nguyen Van A");
            }
        } else {
            errMap.put("nameErr", "Please input name!");
        }
        if (!customer.getTel().isEmpty()) {
            if (!customer.getTel().matches(REGEX_TEL)) {
                errMap.put("telErr", "Please input error format! Example: " +
                        "090xxxxxxx or 091xxxxxxx or (84)+90xxxxxxx or (84)+91xxxxxxx. X: (0-9)");
            }
        } else {
            errMap.put("telErr", "Please input tel!");
        }
        if (!customer.getIdentityCardNumber().isEmpty()) {
            if (!customer.getIdentityCardNumber().matches(REGEX_ID_CARD)) {
                errMap.put("idCardErr", "Please input error format! Example: " +
                        "XXXXXXXXX or XXXXXXXXXXXX. X: (0-9)");
            }
        } else {
            errMap.put("idCardErr", "Please input id card!");
        }
        if (!customer.getEmail().isEmpty()) {
            if (!customer.getEmail().matches(REGEX_EMAIL)) {
                errMap.put("emailRegex", "Please input error format! Example: " +
                        "abc@gmail.com");
            }
        } else {
            errMap.put("emailRegex", "Please input email!");
        }
        if(customer.getDateOfBirth()==null) {
            errMap.put("dayOfBirthErr", "Please input right format! dd/MM/yyyy");
        }
        return errMap;
    }
}

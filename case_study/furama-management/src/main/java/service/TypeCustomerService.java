package service;

import model.TypeCustomer;

import java.util.List;

public interface TypeCustomerService {
    List<TypeCustomer> findAllTypeCustomer();

    TypeCustomer getTypeCustomerById(int typeCustomerId);
}

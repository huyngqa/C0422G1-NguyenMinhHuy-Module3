package repository;

import model.TypeCustomer;

import java.util.List;

public interface TypeCustomerRepository {
    List<TypeCustomer> findAllTypeCustomer();

    TypeCustomer getTypeCustomerById(int typeCustomerId);
}

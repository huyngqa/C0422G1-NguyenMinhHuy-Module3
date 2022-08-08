package service.impl;

import model.TypeCustomer;
import repository.TypeCustomerRepository;
import repository.impl.TypeCustomerRepositoryImpl;
import service.CustomerService;
import service.TypeCustomerService;

import java.util.List;

public class TypeCustomerServiceImpl implements TypeCustomerService {
    private TypeCustomerRepository typeCustomerRepository = new TypeCustomerRepositoryImpl();
    @Override
    public List<TypeCustomer> findAllTypeCustomer() {
        return typeCustomerRepository.findAllTypeCustomer();
    }

    @Override
    public TypeCustomer getTypeCustomerById(int typeCustomerId) {
        return typeCustomerRepository.getTypeCustomerById(typeCustomerId);
    }
}

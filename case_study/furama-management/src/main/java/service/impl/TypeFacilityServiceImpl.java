package service.impl;

import model.RentalType;
import model.TypeFacility;
import repository.TypeFacilityRepository;
import repository.impl.TypeFacilityRepositoryImpl;
import service.TypeFacilityService;

import java.util.List;

public class TypeFacilityServiceImpl implements TypeFacilityService {
    TypeFacilityRepository typeFacilityRepository = new TypeFacilityRepositoryImpl();
    @Override
    public List<TypeFacility> listTypeOfFacility() {
        return typeFacilityRepository.listTypeOfFacility();
    }

    @Override
    public TypeFacility getTypeOfFacilityById(int typeOfFacilityId) {
        return typeFacilityRepository.getTypeOfFacilityById(typeOfFacilityId);
    }

    @Override
    public List<RentalType> listRentalType() {
        return typeFacilityRepository.listRentalType();
    }

    @Override
    public RentalType getRentalTypeById(int rentalTypeId) {
        return typeFacilityRepository.getRentalTypeById(rentalTypeId);
    }
}

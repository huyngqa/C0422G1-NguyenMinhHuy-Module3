package service;

import model.RentalType;
import model.TypeFacility;

import java.util.List;

public interface TypeFacilityService {
    List<TypeFacility> listTypeOfFacility();
    TypeFacility getTypeOfFacilityById(int typeOfFacilityId);
    List<RentalType> listRentalType();
    RentalType getRentalTypeById(int rentalTypeId);
}

package repository;

import model.RentalType;
import model.TypeFacility;

import java.util.List;

public interface TypeFacilityRepository {
    List<TypeFacility> listTypeOfFacility();
    TypeFacility getTypeOfFacilityById(int typeOfFacilityId);
    List<RentalType> listRentalType();
    RentalType getRentalTypeById(int rentalTypeId);
}

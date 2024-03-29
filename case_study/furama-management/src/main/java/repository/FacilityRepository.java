package repository;

import model.Facility;

import java.util.List;

public interface FacilityRepository {
    boolean addNewFacility(Facility facility);
    List<Facility> listFacility();
    Facility findFacilityById(int facilityId);
    boolean editFacility(Facility facility);
    boolean deleteFacilityById(int facilityId);
    List<Facility> searchFacilityByName(String search);
}

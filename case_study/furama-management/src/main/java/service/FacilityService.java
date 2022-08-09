package service;

import model.Facility;

import java.util.List;
import java.util.Map;

public interface FacilityService {
    Map<String, String> addNewFacility(Facility facility);
    List<Facility> listFacility();
    Facility findFacilityById(int facilityId);
    Map<String, String> editFacility(Facility facility);
    boolean deleteFacilityById(int facilityId);
    List<Facility> searchFacilityByName(String search);
}

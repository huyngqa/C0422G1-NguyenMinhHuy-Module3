package service.impl;

import model.Facility;
import model.House;
import model.Villa;
import repository.FacilityRepository;
import repository.impl.FacilityRepositoryImpl;
import service.FacilityService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FacilityServiceImpl implements FacilityService {
    private final String REGEX_NAME_FACILITY = "^([A-Z][a-z0-9]+)(\\s[A-Z0-9][a-z0-9]+)*$";
    private FacilityRepository facilityRepository = new FacilityRepositoryImpl();

    @Override
    public Map<String, String> addNewFacility(Facility facility) {
        Map<String, String> errMap = validate(facility);
        if(errMap.isEmpty()) {
            facilityRepository.addNewFacility(facility);
        }
        return errMap;
    }

    @Override
    public List<Facility> listFacility() {
        return facilityRepository.listFacility();
    }

    @Override
    public Facility findFacilityById(int facilityId) {
        return facilityRepository.findFacilityById(facilityId);
    }

    @Override
    public Map<String, String> editFacility(Facility facility) {
        Map<String, String> errMap = validate(facility);
        if(errMap.isEmpty()) {
            facilityRepository.editFacility(facility);
        }
        return errMap;
    }

    @Override
    public boolean deleteFacilityById(int facilityId) {
        return facilityRepository.deleteFacilityById(facilityId);
    }

    @Override
    public List<Facility> searchFacilityByName(String search) {
        return facilityRepository.searchFacilityByName(search);
    }
    private Map<String, String> validate(Facility facility) {
        Map<String, String> errMap = new HashMap<>();
        if(!facility.getFacilityName().isEmpty()) {
            if(!facility.getFacilityName().matches(REGEX_NAME_FACILITY)) {
                errMap.put("nameErr", "Please input right format! example Villa1");
            }
        }
        if(facility.getTypeFacility().getTypeFacilityId()==1) {
            if(((Villa) facility).getNumOfFloor()==0) {
                errMap.put("floorErr", "Please input right format! Great than 0");
            }
        }
        if(facility.getTypeFacility().getTypeFacilityId()==2) {
            if(((House) facility).getNumOfFloor()==0) {
                errMap.put("floorErr", "Please input right format! Great than 0");
            }
        } 
        return errMap;
    }
}

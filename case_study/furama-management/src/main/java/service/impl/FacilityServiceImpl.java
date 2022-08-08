package service.impl;

import model.Facility;
import repository.FacilityRepository;
import repository.impl.FacilityRepositoryImpl;
import service.FacilityService;

import java.util.List;

public class FacilityServiceImpl implements FacilityService {
    private FacilityRepository facilityRepository = new FacilityRepositoryImpl();

    @Override
    public boolean addNewFacility(Facility facility) {
        return facilityRepository.addNewFacility(facility);
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
    public boolean editFacility(Facility facility) {
        return facilityRepository.editFacility(facility);
    }

    @Override
    public boolean deleteFacilityById(int facilityId) {
        return facilityRepository.deleteFacilityById(facilityId);
    }

    @Override
    public List<Facility> searchFacilityByName(String search) {
        return facilityRepository.searchFacilityByName(search);
    }
}

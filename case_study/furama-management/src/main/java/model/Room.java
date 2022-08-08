package model;

public class Room extends Facility{
    private String facilityFree;

    public Room() {
    }

    public Room(int facilityId, String facilityName, double usableArea, int rentalCosts, int maximumNumOfPeople, RentalType rentalType, TypeFacility typeFacility, String facilityFree) {
        super(facilityId, facilityName, usableArea, rentalCosts, maximumNumOfPeople, rentalType, typeFacility);
        this.facilityFree = facilityFree;
    }

    public Room(String facilityName, double usableArea, int rentalCosts, int maximumNumOfPeople, RentalType rentalType, TypeFacility typeFacility, String facilityFree) {
        super(facilityName, usableArea, rentalCosts, maximumNumOfPeople, rentalType, typeFacility);
        this.facilityFree = facilityFree;
    }

    public String getFacilityFree() {
        return facilityFree;
    }

    public void setFacilityFree(String facilityFree) {
        this.facilityFree = facilityFree;
    }
}

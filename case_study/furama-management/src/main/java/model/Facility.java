package model;

public abstract class Facility {
    private int facilityId;
    private String facilityName;
    private double usableArea;
    private int rentalCosts;
    private int maximumNumOfPeople;
    private RentalType rentalType;
    private TypeFacility typeFacility;

    public Facility() {
    }

    public Facility(int facilityId, String facilityName, double usableArea, int rentalCosts, int maximumNumOfPeople, RentalType rentalType, TypeFacility typeFacility) {
        this.facilityId = facilityId;
        this.facilityName = facilityName;
        this.usableArea = usableArea;
        this.rentalCosts = rentalCosts;
        this.maximumNumOfPeople = maximumNumOfPeople;
        this.rentalType = rentalType;
        this.typeFacility = typeFacility;
    }

    public Facility(String facilityName, double usableArea, int rentalCosts, int maximumNumOfPeople, RentalType rentalType, TypeFacility typeFacility) {
        this.facilityName = facilityName;
        this.usableArea = usableArea;
        this.rentalCosts = rentalCosts;
        this.maximumNumOfPeople = maximumNumOfPeople;
        this.rentalType = rentalType;
        this.typeFacility = typeFacility;
    }

    public int getFacilityId() {
        return facilityId;
    }

    public void setFacilityId(int facilityId) {
        this.facilityId = facilityId;
    }

    public String getFacilityName() {
        return facilityName;
    }

    public void setFacilityName(String facilityName) {
        this.facilityName = facilityName;
    }

    public double getUsableArea() {
        return usableArea;
    }

    public void setUsableArea(double usableArea) {
        this.usableArea = usableArea;
    }

    public int getRentalCosts() {
        return rentalCosts;
    }

    public void setRentalCosts(int rentalCosts) {
        this.rentalCosts = rentalCosts;
    }

    public int getMaximumNumOfPeople() {
        return maximumNumOfPeople;
    }

    public void setMaximumNumOfPeople(int maximumNumOfPeople) {
        this.maximumNumOfPeople = maximumNumOfPeople;
    }

    public RentalType getRentalType() {
        return rentalType;
    }

    public void setRentalType(RentalType rentalType) {
        this.rentalType = rentalType;
    }

    public TypeFacility getTypeFacility() {
        return typeFacility;
    }

    public void setTypeFacility(TypeFacility typeFacility) {
        this.typeFacility = typeFacility;
    }
}

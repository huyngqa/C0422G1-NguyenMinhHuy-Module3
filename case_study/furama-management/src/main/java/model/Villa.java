package model;

public class Villa extends Facility{
    private String standardRoom;
    private String descriptionOtherConvenience;
    private double poolArea;
    private int numOfFloor;

    public Villa() {
    }

    public Villa(int facilityId, String facilityName, double usableArea, int rentalCosts, int maximumNumOfPeople, RentalType rentalType, TypeFacility typeFacility, String standardRoom, String descriptionOtherConvenience, double poolArea, int numOfFloor) {
        super(facilityId, facilityName, usableArea, rentalCosts, maximumNumOfPeople, rentalType, typeFacility);
        this.standardRoom = standardRoom;
        this.descriptionOtherConvenience = descriptionOtherConvenience;
        this.poolArea = poolArea;
        this.numOfFloor = numOfFloor;
    }

    public Villa(String facilityName, double usableArea, int rentalCosts, int maximumNumOfPeople, RentalType rentalType, TypeFacility typeFacility, String standardRoom, String descriptionOtherConvenience, double poolArea, int numOfFloor) {
        super(facilityName, usableArea, rentalCosts, maximumNumOfPeople, rentalType, typeFacility);
        this.standardRoom = standardRoom;
        this.descriptionOtherConvenience = descriptionOtherConvenience;
        this.poolArea = poolArea;
        this.numOfFloor = numOfFloor;
    }

    public String getStandardRoom() {
        return standardRoom;
    }

    public void setStandardRoom(String standardRoom) {
        this.standardRoom = standardRoom;
    }

    public String getDescriptionOtherConvenience() {
        return descriptionOtherConvenience;
    }

    public void setDescriptionOtherConvenience(String descriptionOtherConvenience) {
        this.descriptionOtherConvenience = descriptionOtherConvenience;
    }

    public double getPoolArea() {
        return poolArea;
    }

    public void setPoolArea(double poolArea) {
        this.poolArea = poolArea;
    }

    public int getNumOfFloor() {
        return numOfFloor;
    }

    public void setNumOfFloor(int numOfFloor) {
        this.numOfFloor = numOfFloor;
    }
}

package model;

public class House extends Facility{
    private String standardRoom;
    private String descriptionOtherConvenience;
    private int numOfFloor;

    public House() {
    }

    public House(int facilityId, String facilityName, double usableArea, int rentalCosts, int maximumNumOfPeople, RentalType rentalType, TypeFacility typeFacility, String standardRoom, String descriptionOtherConvenience, int numOfFloor) {
        super(facilityId, facilityName, usableArea, rentalCosts, maximumNumOfPeople, rentalType, typeFacility);
        this.standardRoom = standardRoom;
        this.descriptionOtherConvenience = descriptionOtherConvenience;
        this.numOfFloor = numOfFloor;
    }

    public House(String facilityName, double usableArea, int rentalCosts, int maximumNumOfPeople, RentalType rentalType, TypeFacility typeFacility, String standardRoom, String descriptionOtherConvenience, int numOfFloor) {
        super(facilityName, usableArea, rentalCosts, maximumNumOfPeople, rentalType, typeFacility);
        this.standardRoom = standardRoom;
        this.descriptionOtherConvenience = descriptionOtherConvenience;
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

    public int getNumOfFloor() {
        return numOfFloor;
    }

    public void setNumOfFloor(int numOfFloor) {
        this.numOfFloor = numOfFloor;
    }
}

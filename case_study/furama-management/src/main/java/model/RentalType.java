package model;

public class RentalType {
    private int rentalTypeId;
    private String rentalTypeName;

    public RentalType() {
    }

    public RentalType(int rentalTypeId, String rentalTypeName) {
        this.rentalTypeId = rentalTypeId;
        this.rentalTypeName = rentalTypeName;
    }

    public int getRentalTypeId() {
        return rentalTypeId;
    }

    public void setRentalTypeId(int rentalTypeId) {
        this.rentalTypeId = rentalTypeId;
    }

    public String getRentalTypeName() {
        return rentalTypeName;
    }

    public void setRentalTypeName(String rentalTypeName) {
        this.rentalTypeName = rentalTypeName;
    }
}

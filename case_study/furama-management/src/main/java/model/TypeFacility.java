package model;

public class TypeFacility {
    private int typeFacilityId;
    private String typeFacilityName;

    public TypeFacility() {
    }

    public TypeFacility(int typeFacilityId, String typeFacilityName) {
        this.typeFacilityId = typeFacilityId;
        this.typeFacilityName = typeFacilityName;
    }

    public int getTypeFacilityId() {
        return typeFacilityId;
    }

    public void setTypeFacilityId(int typeFacilityId) {
        this.typeFacilityId = typeFacilityId;
    }

    public String getTypeFacilityName() {
        return typeFacilityName;
    }

    public void setTypeFacilityName(String typeFacilityName) {
        this.typeFacilityName = typeFacilityName;
    }
}

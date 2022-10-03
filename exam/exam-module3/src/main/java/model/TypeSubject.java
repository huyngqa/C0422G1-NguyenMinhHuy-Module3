package model;

public class TypeSubject {
    private String typeSubjectId;
    private String typeSubjectName;

    public TypeSubject() {
    }

    public TypeSubject(String typeSubjectId, String typeSubjectName) {
        this.typeSubjectId = typeSubjectId;
        this.typeSubjectName = typeSubjectName;
    }

    public String getTypeSubjectId() {
        return typeSubjectId;
    }

    public void setTypeSubjectId(String typeSubjectId) {
        this.typeSubjectId = typeSubjectId;
    }

    public String getTypeSubjectName() {
        return typeSubjectName;
    }

    public void setTypeSubjectName(String typeSubjectName) {
        this.typeSubjectName = typeSubjectName;
    }
}

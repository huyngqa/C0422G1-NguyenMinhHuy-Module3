package model;

public class Subject {
    private String subjectId;
    private String title;
    private String typeSubject;
    private String level;
    private String module;
    private String linkSubject;

    public Subject() {
    }

    public Subject(String title, String typeSubject, String level, String module, String linkSubject) {
        this.title = title;
        this.typeSubject = typeSubject;
        this.level = level;
        this.module = module;
        this.linkSubject = linkSubject;
    }

    public Subject(String subjectId, String title, String typeSubject, String level, String module, String linkSubject) {
        this.subjectId = subjectId;
        this.title = title;
        this.typeSubject = typeSubject;
        this.level = level;
        this.module = module;
        this.linkSubject = linkSubject;
    }

    public String getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(String subjectId) {
        this.subjectId = subjectId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTypeSubject() {
        return typeSubject;
    }

    public void setTypeSubject(String typeSubject) {
        this.typeSubject = typeSubject;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getModule() {
        return module;
    }

    public void setModule(String module) {
        this.module = module;
    }

    public String getLinkSubject() {
        return linkSubject;
    }

    public void setLinkSubject(String linkSubject) {
        this.linkSubject = linkSubject;
    }
}

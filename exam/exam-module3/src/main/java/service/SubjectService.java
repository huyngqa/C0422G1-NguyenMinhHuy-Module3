package service;

import model.Subject;

import java.util.List;

public interface SubjectService {
    List<Subject> findAllSubject();
    void addNewSubject(Subject subject);
    boolean deleteSubjectById(String id);
    Subject findSubjectById(String id);
}

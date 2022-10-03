package service.impl;

import model.Subject;
import repository.SubjectRepository;
import repository.impl.SubjectRepositoryImpl;
import service.SubjectService;

import java.util.List;

public class SubjectServiceImpl implements SubjectService {
    private SubjectRepository subjectRepository = new SubjectRepositoryImpl();
    @Override
    public List<Subject> findAllSubject() {
        return subjectRepository.findAllSubject();
    }

    @Override
    public void addNewSubject(Subject subject) {
        subjectRepository.addNewSubject(subject);
    }

    @Override
    public boolean deleteSubjectById(String id) {
        return subjectRepository.deleteSubjectById(id);
    }

    @Override
    public Subject findSubjectById(String id) {
        return subjectRepository.findSubjectById(id);
    }
}

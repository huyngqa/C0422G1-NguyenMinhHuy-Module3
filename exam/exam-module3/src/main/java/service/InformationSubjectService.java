package service;

import model.Level;
import model.Module;
import model.TypeSubject;

import java.util.List;

public interface InformationSubjectService {
    List<Level> findAllLevel();
    List<Module> findAllModule();
    List<TypeSubject> findAllTypeSubject();
}

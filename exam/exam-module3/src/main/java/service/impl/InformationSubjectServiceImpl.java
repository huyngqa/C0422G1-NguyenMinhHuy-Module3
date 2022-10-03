package service.impl;

import model.Level;
import model.Module;
import model.TypeSubject;
import repository.InformationSubjectRepository;
import repository.impl.InformationSubjectRepositoryImpl;
import service.InformationSubjectService;

import java.util.List;

public class InformationSubjectServiceImpl implements InformationSubjectService {
    private InformationSubjectRepository repository = new InformationSubjectRepositoryImpl();
    @Override
    public List<Level> findAllLevel() {
        return repository.findAllLevel();
    }

    @Override
    public List<Module> findAllModule() {
        return repository.findAllModule();
    }

    @Override
    public List<TypeSubject> findAllTypeSubject() {
        return repository.findAllTypeSubject();
    }
}

package repository.impl;

import config.ConnectionDB;
import model.Level;
import model.Module;
import model.TypeSubject;
import repository.InformationSubjectRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class InformationSubjectRepositoryImpl implements InformationSubjectRepository {
    private final String SELECT_ALL_LEVEL = "SELECT * FROM do_kho";
    private final String SELECT_ALL_MODULE = "SELECT * FROM module";
    private final String SELECT_ALL_TYPE_SUBJECT = "SELECT * FROM loai_bai_hoc";
    @Override
    public List<Level> findAllLevel() {
        List<Level> levels = new ArrayList<>();
        Connection connection = ConnectionDB.getConnectDB();
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_ALL_LEVEL);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                String id = resultSet.getString("ma_do_kho");
                String name = resultSet.getString("ten_do_kho");
                levels.add(new Level(id, name));
            }
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        }
        return levels;
    }

    @Override
    public List<Module> findAllModule() {
        List<Module> modules = new ArrayList<>();
        Connection connection = ConnectionDB.getConnectDB();
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_ALL_MODULE);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                String id = resultSet.getString("ma_module");
                String name = resultSet.getString("ten_module");
                modules.add(new Module(id, name));
            }
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        }
        return modules;
    }

    @Override
    public List<TypeSubject> findAllTypeSubject() {
        List<TypeSubject> typeSubjects = new ArrayList<>();
        Connection connection = ConnectionDB.getConnectDB();
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_ALL_TYPE_SUBJECT);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                String id = resultSet.getString("ma_loai_bai_hoc");
                String name = resultSet.getString("ten_loai_bai_hoc");
                typeSubjects.add(new TypeSubject(id, name));
            }
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        }
        return typeSubjects;
    }
}

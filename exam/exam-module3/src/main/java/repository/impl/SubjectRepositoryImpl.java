package repository.impl;

import config.ConnectionDB;
import model.Subject;
import repository.SubjectRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SubjectRepositoryImpl implements SubjectRepository {
    private final String SELECT_ALL_SUBJECT = "SELECT bh.ma_bai_hoc,bh.tieu_de, lbh.ten_loai_bai_hoc,dk.ten_do_kho," +
            "m.ten_module, bh.link_bai_hoc FROM bai_hoc bh JOIN loai_bai_hoc lbh ON bh.ma_loai_bai_hoc = lbh.ma_loai_bai_hoc\n" +
            "JOIN do_kho dk ON bh.ma_do_kho = dk.ma_do_kho JOIN module m ON bh.ma_module = m.ma_module;";
    private final String DELETE_SUBJECT_BY_ID = "DELETE FROM bai_hoc WHERE ma_bai_hoc = ?";
    private final String SELECT_SUBJECT_BY_ID = "SELECT bh.ma_bai_hoc,bh.tieu_de, lbh.ten_loai_bai_hoc,dk.ten_do_kho," +
            "m.ten_module, bh.link_bai_hoc FROM bai_hoc bh JOIN loai_bai_hoc lbh ON bh.ma_loai_bai_hoc = lbh.ma_loai_bai_hoc\n" +
            "JOIN do_kho dk ON bh.ma_do_kho = dk.ma_do_kho JOIN module m ON bh.ma_module = m.ma_module WHERE bh.ma_bai_hoc = ?;";
    private final String ADD_NEW_SUBJECT = "INSERT INTO bai_hoc(tieu_de, ma_loai_bai_hoc, ma_do_kho, ma_module, link_bai_hoc)\n" +
            "VALUES (?, ?,?,?,?)";

    @Override
    public List<Subject> findAllSubject() {
        List<Subject> subjects = new ArrayList<>();
        Connection connection = ConnectionDB.getConnectDB();
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_ALL_SUBJECT);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                String subjectId = resultSet.getString("ma_bai_hoc");
                String title = resultSet.getString("tieu_de");
                String typeSubject = resultSet.getString("ten_loai_bai_hoc");
                String level = resultSet.getString("ten_do_kho");
                String module = resultSet.getString("ten_module");
                String link = resultSet.getString("link_bai_hoc");
                subjects.add(new Subject(subjectId, title, typeSubject, level, module, link));
            }
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        }
        return subjects;
    }

    @Override
    public void addNewSubject(Subject subject) {
        Connection connection = ConnectionDB.getConnectDB();
        try {
            PreparedStatement statement = connection.prepareStatement(ADD_NEW_SUBJECT);
            statement.setString(1,subject.getTitle());
            statement.setString(2,subject.getTypeSubject());
            statement.setString(3,subject.getLevel());
            statement.setString(4,subject.getModule());
            statement.setString(5,subject.getLinkSubject());
            statement.executeUpdate();
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        }
    }

    @Override
    public boolean deleteSubjectById(String id) {
        Connection connection = ConnectionDB.getConnectDB();
        try {
            PreparedStatement statement = connection.prepareStatement(DELETE_SUBJECT_BY_ID);
            statement.setString(1, id);
            return statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Subject findSubjectById(String id) {
        Subject subject = new Subject();
        Connection connection = ConnectionDB.getConnectDB();
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_SUBJECT_BY_ID);
            statement.setString(1, id);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                String subjectId = resultSet.getString("ma_bai_hoc");
                String title = resultSet.getString("tieu_de");
                String typeSubject = resultSet.getString("ten_loai_bai_hoc");
                String level = resultSet.getString("ten_do_kho");
                String module = resultSet.getString("ten_module");
                String link = resultSet.getString("link_bai_hoc");
                subject = new Subject(subjectId, title, typeSubject, level, module, link);
            }
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        }
        return subject;
    }
}

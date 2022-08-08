package repository.impl;

import config.ConnectDB;
import model.RentalType;
import model.TypeFacility;
import repository.TypeFacilityRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TypeFacilityRepositoryImpl implements TypeFacilityRepository {
    private final String SELECT_ALL_TYPE_FACILITY_QUERY = "select * from loai_dich_vu";
    private final String SELECT_ALL_RENTAL_TYPE_FACILITY_QUERY = "select * from kieu_thue";
    private final String SELECT_TYPE_FACILITY_BY_ID_QUERY = "select * from loai_dich_vu where ma_loai_dich_vu = ?";
    private final String SELECT_RENTAL_TYPE_FACILITY_BY_ID_QUERY = "select * from kieu_thue where ma_kieu_thue = ?";
    @Override
    public List<TypeFacility> listTypeOfFacility() {
        List<TypeFacility> typeFacilities = new ArrayList<>();
        Connection connection = ConnectDB.getConnectDB();
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_ALL_TYPE_FACILITY_QUERY);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ma_loai_dich_vu");
                String name = resultSet.getString("ten_loai_dich_vu");
                typeFacilities.add(new TypeFacility(id, name));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return typeFacilities;
    }

    @Override
    public TypeFacility getTypeOfFacilityById(int typeOfFacilityId) {
        TypeFacility typeFacility;
        Connection connection = ConnectDB.getConnectDB();
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_TYPE_FACILITY_BY_ID_QUERY);
            statement.setInt(1, typeOfFacilityId);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ma_loai_dich_vu");
                String name = resultSet.getString("ten_loai_dich_vu");
                typeFacility = new TypeFacility(id, name);
                return typeFacility;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<RentalType> listRentalType() {
        List<RentalType> rentalTypes = new ArrayList<>();
        Connection connection = ConnectDB.getConnectDB();
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_ALL_RENTAL_TYPE_FACILITY_QUERY);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ma_kieu_thue");
                String name = resultSet.getString("ten_kieu_thue");
                rentalTypes.add(new RentalType(id, name));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rentalTypes;
    }

    @Override
    public RentalType getRentalTypeById(int rentalTypeId) {
        RentalType rentalType;
        Connection connection = ConnectDB.getConnectDB();
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_RENTAL_TYPE_FACILITY_BY_ID_QUERY);
            statement.setInt(1, rentalTypeId);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ma_kieu_thue");
                String name = resultSet.getString("ten_kieu_thue");
                rentalType = new RentalType(id, name);
                return rentalType;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}

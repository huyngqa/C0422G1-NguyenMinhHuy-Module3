package repository.impl;

import config.ConnectDB;
import model.TypeCustomer;
import repository.TypeCustomerRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TypeCustomerRepositoryImpl implements TypeCustomerRepository {
    private final String SELECT_ALL_TYPE_CUSTOMER_QUERY = "select * from loai_khach";
    private final String SELECT_TYPE_CUSTOMER_QUERY = "select * from loai_khach where ma_loai_khach = ?";

    @Override
    public List<TypeCustomer> findAllTypeCustomer() {
        List<TypeCustomer> typeCustomerList = new ArrayList<>();
        Connection connection = ConnectDB.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_TYPE_CUSTOMER_QUERY);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ma_loai_khach");
                String name = resultSet.getString("ten_loai_khach");
                typeCustomerList.add(new TypeCustomer(id, name));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return typeCustomerList;
    }

    @Override
    public TypeCustomer getTypeCustomerById(int typeCustomerId) {
        TypeCustomer typeCustomer = new TypeCustomer();
        Connection connection = ConnectDB.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_TYPE_CUSTOMER_QUERY);
            preparedStatement.setInt(1, typeCustomerId);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString("ten_loai_khach");
                typeCustomer = new TypeCustomer(typeCustomerId, name);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return typeCustomer;
    }
}

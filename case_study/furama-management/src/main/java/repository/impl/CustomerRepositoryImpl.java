package repository.impl;

import config.ConnectDB;
import model.Customer;
import model.TypeCustomer;
import repository.CustomerRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepositoryImpl implements CustomerRepository {
    private final String SELECT_ALL_CUSTOMER_QUERY = "select * from khach_hang";
    private final String SELECT_TYPE_CUSTOMER_QUERY = "select * from loai_khach where ma_loai_khach = ?";

    @Override
    public List<Customer> findAllCustomer() {
        List<Customer> customers = new ArrayList<>();
        Connection connection = ConnectDB.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMER_QUERY);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ma_khach_hang");
                String name = resultSet.getString("ho_ten");
                LocalDate birthDay = LocalDate.parse(resultSet.getString("ngay_sinh"), DateTimeFormatter.ofPattern("yyyy-MM-dd"));
                String identityCard = resultSet.getString("so_cmnd");
                String tel = resultSet.getString("so_dien_thoai");
                String email = resultSet.getString("email");
                String address = resultSet.getString("dia_chi");
                int typeCustomerId = resultSet.getInt("ma_loai_khach");
                TypeCustomer typeCustomer = getTypeCustomerById(typeCustomerId);
                boolean gender = resultSet.getBoolean("gioi_tinh");
                customers.add(new Customer(id, name, birthDay, identityCard, tel, email, address, typeCustomer, gender));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customers;
    }

    @Override
    public boolean addNewCustomer(Customer customer) {
        return false;
    }

    @Override
    public boolean editCustomer(Customer customer) {
        return false;
    }

    @Override
    public Customer findCustomerById(int customerId) {
        return null;
    }

    private TypeCustomer getTypeCustomerById(int typeCustomerId) {
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

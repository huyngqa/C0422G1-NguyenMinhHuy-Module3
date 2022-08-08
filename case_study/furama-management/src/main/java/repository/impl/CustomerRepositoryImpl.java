package repository.impl;

import config.ConnectDB;
import model.Customer;
import model.TypeCustomer;
import repository.CustomerRepository;
import repository.TypeCustomerRepository;

import java.sql.*;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepositoryImpl implements CustomerRepository {
    private TypeCustomerRepository typeCustomerRepository = new TypeCustomerRepositoryImpl();

    private final String SELECT_ALL_CUSTOMER_QUERY = "select * from khach_hang";
    private final String ADD_CUSTOMER_QUERY = "insert into khach_hang (ma_loai_khach, ho_ten, ngay_sinh, gioi_tinh, so_cmnd, so_dien_thoai, email, dia_chi) \n" +
            "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    private final String DELETE_CUSTOMER_SP = "{call sp_xoa_khach_hang(?)}";
    private final String SELECT_CUSTOMER_BY_ID_QUERY = "select * from khach_hang where ma_khach_hang = ?";
    private final String UPDATE_CUSTOMER_QUERY = "update khach_hang set ma_loai_khach = ?, ho_ten = ?, ngay_sinh = ?, gioi_tinh = ?, so_cmnd = ?, so_dien_thoai =? , email = ?, dia_chi = ? " +
            "where ma_khach_hang = ?";
    private final String SEARCH_CUSTOMER_BY_NAME_QUERY = "select * from khach_hang where ho_ten like ?";


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
                TypeCustomer typeCustomer = typeCustomerRepository.getTypeCustomerById(typeCustomerId);
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
        Connection connection = ConnectDB.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(ADD_CUSTOMER_QUERY);
            preparedStatement.setInt(1, customer.getTypeCustomerName().getTypeCustomerId());
            preparedStatement.setString(2, customer.getName());
            preparedStatement.setDate(3, Date.valueOf(customer.getDateOfBirth()));
            preparedStatement.setBoolean(4, customer.isGender());
            preparedStatement.setString(5, customer.getIdentityCardNumber());
            preparedStatement.setString(6, customer.getTel());
            preparedStatement.setString(7, customer.getEmail());
            preparedStatement.setString(8, customer.getAddress());
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean editCustomer(Customer customer) {
        Connection connection = ConnectDB.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_CUSTOMER_QUERY);
            preparedStatement.setInt(1, customer.getTypeCustomerName().getTypeCustomerId());
            preparedStatement.setString(2, customer.getName());
            preparedStatement.setDate(3, Date.valueOf(customer.getDateOfBirth()));
            preparedStatement.setBoolean(4, customer.isGender());
            preparedStatement.setString(5, customer.getIdentityCardNumber());
            preparedStatement.setString(6, customer.getTel());
            preparedStatement.setString(7, customer.getEmail());
            preparedStatement.setString(8, customer.getAddress());
            preparedStatement.setInt(9, customer.getPersonId());
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Customer findCustomerById(int customerId) {
        Connection connection = ConnectDB.getConnectDB();
        Customer customer = new Customer();
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_CUSTOMER_BY_ID_QUERY);
            statement.setInt(1, customerId);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ma_khach_hang");
                String name = resultSet.getString("ho_ten");
                LocalDate birthDay = LocalDate.parse(resultSet.getString("ngay_sinh"), DateTimeFormatter.ofPattern("yyyy-MM-dd"));
                String identityCard = resultSet.getString("so_cmnd");
                String tel = resultSet.getString("so_dien_thoai");
                String email = resultSet.getString("email");
                String address = resultSet.getString("dia_chi");
                int typeCustomerId = resultSet.getInt("ma_loai_khach");
                TypeCustomer typeCustomer = typeCustomerRepository.getTypeCustomerById(typeCustomerId);
                boolean gender = resultSet.getBoolean("gioi_tinh");
                customer = new Customer(id, name, birthDay, identityCard, tel, email, address, typeCustomer, gender);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return customer;
    }

    @Override
    public boolean deleteCustomerById(int customerId) {
        Connection connection = ConnectDB.getConnectDB();
        try {
            CallableStatement statement = connection.prepareCall(DELETE_CUSTOMER_SP);
            statement.setInt(1,customerId);
            return statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Customer> searchCustomerByName(String search) {
        List<Customer> customers = new ArrayList<>();
        Connection connection = ConnectDB.getConnectDB();
        try {
            PreparedStatement statement = connection.prepareStatement(SEARCH_CUSTOMER_BY_NAME_QUERY);
            statement.setString(1, "%" + search+"%");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ma_khach_hang");
                String name = resultSet.getString("ho_ten");
                LocalDate birthDay = LocalDate.parse(resultSet.getString("ngay_sinh"), DateTimeFormatter.ofPattern("yyyy-MM-dd"));
                String identityCard = resultSet.getString("so_cmnd");
                String tel = resultSet.getString("so_dien_thoai");
                String email = resultSet.getString("email");
                String address = resultSet.getString("dia_chi");
                int typeCustomerId = resultSet.getInt("ma_loai_khach");
                TypeCustomer typeCustomer = typeCustomerRepository.getTypeCustomerById(typeCustomerId);
                boolean gender = resultSet.getBoolean("gioi_tinh");
                customers.add(new Customer(id, name, birthDay, identityCard, tel, email, address, typeCustomer, gender));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customers;
    }


}

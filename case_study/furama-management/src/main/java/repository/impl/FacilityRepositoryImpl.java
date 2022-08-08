package repository.impl;

import config.ConnectDB;
import model.*;
import repository.FacilityRepository;
import repository.TypeFacilityRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FacilityRepositoryImpl implements FacilityRepository {
    private final String ADD_FACILITY_QUERY = "INSERT INTO dich_vu (ten_dich_vu, dien_tich, chi_phi_thue, so_nguoi_toi_da, ma_kieu_thue, ma_loai_dich_vu, tieu_chuan_phong, mo_ta_tien_nghi_khac, dien_tich_ho_boi, so_tang, dich_vu_mien_phi_di_kem) \n" +
            "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    private final String SELECT_ALL_FACILITY_QUERY = "select * from dich_vu";
    private final String SELECT_FACILITY_BY_ID_QUERY = "select * from dich_vu where ma_dich_vu = ?";
    private final String UPDATE_FACILITY_BY_ID_QUERY = "update dich_vu set ten_dich_vu = ?, dien_tich = ?, chi_phi_thue = ?, so_nguoi_toi_da = ?, ma_kieu_thue = ?, ma_loai_dich_vu = ?," +
            " tieu_chuan_phong = ?,mo_ta_tien_nghi_khac = ?, dien_tich_ho_boi = ?, so_tang = ?, dich_vu_mien_phi_di_kem = ? " +
            "where ma_dich_vu = ?";
    private final String DELETE_FACILITY_BY_ID_SP = "{call sp_xoa_dich_vu(?)}";
    private final String SEARCH_FACILITY_BY_NAME_QUERY = "select * from dich_vu where ten_dich_vu like ?";
    private TypeFacilityRepository typeFacilityRepository = new TypeFacilityRepositoryImpl();

    @Override
    public boolean addNewFacility(Facility facility) {
        Connection connection = ConnectDB.getConnectDB();
        try {
            PreparedStatement statement = connection.prepareStatement(ADD_FACILITY_QUERY);
            statement.setString(1, facility.getFacilityName());
            statement.setDouble(2, facility.getUsableArea());
            statement.setInt(3, facility.getRentalCosts());
            statement.setInt(4, facility.getMaximumNumOfPeople());
            statement.setInt(5, facility.getRentalType().getRentalTypeId());
            statement.setInt(6, facility.getTypeFacility().getTypeFacilityId());
            if (facility.getTypeFacility().getTypeFacilityId() == 1) {
                statement.setString(7, ((Villa) facility).getStandardRoom());
                statement.setString(8, ((Villa) facility).getDescriptionOtherConvenience());
                statement.setDouble(9, ((Villa) facility).getPoolArea());
                statement.setInt(10, ((Villa) facility).getNumOfFloor());
                statement.setString(11, null);
            } else if (facility.getTypeFacility().getTypeFacilityId() == 2) {
                statement.setString(7, ((House) facility).getStandardRoom());
                statement.setString(8, ((House) facility).getDescriptionOtherConvenience());
                statement.setString(9, null);
                statement.setInt(10, ((House) facility).getNumOfFloor());
                statement.setString(11, null);
            } else {
                statement.setString(7, null);
                statement.setString(8, null);
                statement.setString(9, null);
                statement.setString(10, null);
                statement.setString(11, ((Room) facility).getFacilityFree());
            }
            return statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Facility> listFacility() {
        List<Facility> facilities = new ArrayList<>();
        RentalType rentalType;
        TypeFacility typeFacility;
        Connection connection = ConnectDB.getConnectDB();
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_ALL_FACILITY_QUERY);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ma_dich_vu");
                String name = resultSet.getString("ten_dich_vu");
                double area = resultSet.getDouble("dien_tich");
                int cost = resultSet.getInt("chi_phi_thue");
                int maxOfPeople = resultSet.getInt("so_nguoi_toi_da");
                int rentalTypeId = resultSet.getInt("ma_kieu_thue");
                rentalType = typeFacilityRepository.getRentalTypeById(rentalTypeId);
                int typeFacilityID = resultSet.getInt("ma_loai_dich_vu");
                typeFacility = typeFacilityRepository.getTypeOfFacilityById(typeFacilityID);
                if (typeFacilityID == 1) {
                    String standard = resultSet.getString("tieu_chuan_phong");
                    String descriptionOtherConvenience = resultSet.getString("mo_ta_tien_nghi_khac");
                    double poolArea = resultSet.getDouble("dien_tich_ho_boi");
                    int numOfFloor = resultSet.getInt("so_tang");
                    facilities.add(new Villa(id, name, area, cost, maxOfPeople, rentalType, typeFacility, standard, descriptionOtherConvenience, poolArea, numOfFloor));
                } else if (typeFacilityID == 2) {
                    String standard = resultSet.getString("tieu_chuan_phong");
                    String descriptionOtherConvenience = resultSet.getString("mo_ta_tien_nghi_khac");
                    int numOfFloor = resultSet.getInt("so_tang");
                    facilities.add(new House(id, name, area, cost, maxOfPeople, rentalType, typeFacility, standard, descriptionOtherConvenience, numOfFloor));
                } else {
                    String facilityFree = resultSet.getString("dich_vu_mien_phi_di_kem");
                    facilities.add(new Room(id, name, area, cost, maxOfPeople, rentalType, typeFacility, facilityFree));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return facilities;
    }

    @Override
    public Facility findFacilityById(int facilityId) {
        Facility facility = null;
        RentalType rentalType;
        TypeFacility typeFacility;
        Connection connection = ConnectDB.getConnectDB();
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_FACILITY_BY_ID_QUERY);
            statement.setInt(1, facilityId);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ma_dich_vu");
                String name = resultSet.getString("ten_dich_vu");
                double area = resultSet.getDouble("dien_tich");
                int cost = resultSet.getInt("chi_phi_thue");
                int maxOfPeople = resultSet.getInt("so_nguoi_toi_da");
                int rentalTypeId = resultSet.getInt("ma_kieu_thue");
                rentalType = typeFacilityRepository.getRentalTypeById(rentalTypeId);
                int typeFacilityID = resultSet.getInt("ma_loai_dich_vu");
                typeFacility = typeFacilityRepository.getTypeOfFacilityById(typeFacilityID);
                if (typeFacilityID == 1) {
                    String standard = resultSet.getString("tieu_chuan_phong");
                    String descriptionOtherConvenience = resultSet.getString("mo_ta_tien_nghi_khac");
                    double poolArea = resultSet.getDouble("dien_tich_ho_boi");
                    int numOfFloor = resultSet.getInt("so_tang");
                    facility = new Villa(id, name, area, cost, maxOfPeople, rentalType, typeFacility, standard, descriptionOtherConvenience, poolArea, numOfFloor);
                } else if (typeFacilityID == 2) {
                    String standard = resultSet.getString("tieu_chuan_phong");
                    String descriptionOtherConvenience = resultSet.getString("mo_ta_tien_nghi_khac");
                    int numOfFloor = resultSet.getInt("so_tang");
                    facility = new House(id, name, area, cost, maxOfPeople, rentalType, typeFacility, standard, descriptionOtherConvenience, numOfFloor);
                } else {
                    String facilityFree = resultSet.getString("dich_vu_mien_phi_di_kem");
                    facility = new Room(id, name, area, cost, maxOfPeople, rentalType, typeFacility, facilityFree);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return facility;
    }

    @Override
    public boolean editFacility(Facility facility) {
        Connection connection = ConnectDB.getConnectDB();
        try {
            PreparedStatement statement = connection.prepareStatement(UPDATE_FACILITY_BY_ID_QUERY);
            statement.setString(1, facility.getFacilityName());
            statement.setDouble(2, facility.getUsableArea());
            statement.setInt(3, facility.getRentalCosts());
            statement.setInt(4, facility.getMaximumNumOfPeople());
            statement.setInt(5, facility.getRentalType().getRentalTypeId());
            statement.setInt(6, facility.getTypeFacility().getTypeFacilityId());
            if (facility.getTypeFacility().getTypeFacilityId() == 1) {
                statement.setString(7, ((Villa) facility).getStandardRoom());
                statement.setString(8, ((Villa) facility).getDescriptionOtherConvenience());
                statement.setDouble(9, ((Villa) facility).getPoolArea());
                statement.setInt(10, ((Villa) facility).getNumOfFloor());
                statement.setString(11, null);
            } else if (facility.getTypeFacility().getTypeFacilityId() == 2) {
                statement.setString(7, ((House) facility).getStandardRoom());
                statement.setString(8, ((House) facility).getDescriptionOtherConvenience());
                statement.setString(9, null);
                statement.setInt(10, ((House) facility).getNumOfFloor());
                statement.setString(11, null);
            } else {
                statement.setString(7, null);
                statement.setString(8, null);
                statement.setString(9, null);
                statement.setString(10, null);
                statement.setString(11, ((Room) facility).getFacilityFree());
            }
            statement.setInt(12, facility.getFacilityId());
            return statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteFacilityById(int facilityId) {
        Connection connection = ConnectDB.getConnectDB();
        try {
            CallableStatement statement = connection.prepareCall(DELETE_FACILITY_BY_ID_SP);
            statement.setInt(1, facilityId);
            return statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Facility> searchFacilityByName(String search) {
        List<Facility> facilities = new ArrayList<>();
        RentalType rentalType;
        TypeFacility typeFacility;
        Connection connection = ConnectDB.getConnectDB();
        try {
            PreparedStatement statement = connection.prepareStatement(SEARCH_FACILITY_BY_NAME_QUERY);
            statement.setString(1, "%" + search + "%");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ma_dich_vu");
                String name = resultSet.getString("ten_dich_vu");
                double area = resultSet.getDouble("dien_tich");
                int cost = resultSet.getInt("chi_phi_thue");
                int maxOfPeople = resultSet.getInt("so_nguoi_toi_da");
                int rentalTypeId = resultSet.getInt("ma_kieu_thue");
                rentalType = typeFacilityRepository.getRentalTypeById(rentalTypeId);
                int typeFacilityID = resultSet.getInt("ma_loai_dich_vu");
                typeFacility = typeFacilityRepository.getTypeOfFacilityById(typeFacilityID);
                if (typeFacilityID == 1) {
                    String standard = resultSet.getString("tieu_chuan_phong");
                    String descriptionOtherConvenience = resultSet.getString("mo_ta_tien_nghi_khac");
                    double poolArea = resultSet.getDouble("dien_tich_ho_boi");
                    int numOfFloor = resultSet.getInt("so_tang");
                    facilities.add(new Villa(id, name, area, cost, maxOfPeople, rentalType, typeFacility, standard, descriptionOtherConvenience, poolArea, numOfFloor));
                } else if (typeFacilityID == 2) {
                    String standard = resultSet.getString("tieu_chuan_phong");
                    String descriptionOtherConvenience = resultSet.getString("mo_ta_tien_nghi_khac");
                    int numOfFloor = resultSet.getInt("so_tang");
                    facilities.add(new House(id, name, area, cost, maxOfPeople, rentalType, typeFacility, standard, descriptionOtherConvenience, numOfFloor));
                } else {
                    String facilityFree = resultSet.getString("dich_vu_mien_phi_di_kem");
                    facilities.add(new Room(id, name, area, cost, maxOfPeople, rentalType, typeFacility, facilityFree));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return facilities;
    }
}

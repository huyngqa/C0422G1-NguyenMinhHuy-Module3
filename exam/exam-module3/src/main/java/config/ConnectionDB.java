package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDB {
    private static final String URL ="jdbc:mysql://localhost:3306/study";
    private static final String USER ="root";
    private static final String PASS ="20021999";
    public static Connection getConnectDB(){
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection= DriverManager.getConnection(URL,USER,PASS);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return connection;
    }
}

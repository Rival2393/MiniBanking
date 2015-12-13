package my.banking.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by Dima on 12.12.2015.
 */
public class DataSource {

    private static final String LOGIN = "banking";
    private static final String PASSWORD = "root";
    private static final String URL = "jdbc:oracle:thin:@localhost:1521:XE";

    private static Connection connection;

    public static Connection getConnection(){
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection(URL, LOGIN, PASSWORD);
            return connection;
        } catch (ClassNotFoundException e){
            System.err.println(e.getMessage());
        } catch (SQLException e) {
            System.err.println("Unable to connect");
        }
        return null;
    }
}

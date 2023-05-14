package util;

import java.sql.*;

public class BasicConnectionSingleton {
    private static String url =
            "jdbc:mysql://localhost:3306/SQLL?serverTimezone=America/Bogota";
    private static String user = "SQLL";
    private static String pass = "";
    private static Connection conn;
    public static Connection getInstance()
            throws SQLException {
        if (conn == null) {
            conn = DriverManager.getConnection(url, user,pass);
        }
        return conn;
    }
} // BasicConnectionSingleton

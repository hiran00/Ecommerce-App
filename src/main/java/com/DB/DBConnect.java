package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {

    private static Connection conn;

    public static Connection getConn() throws ClassNotFoundException {
    	
        try {
        	Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce-app", "root", "MyRoot@2024");
        } catch (SQLException e) {
            e.printStackTrace();
            
        }
        return conn;
    }

    public static void closeConn(Connection conn) {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
                
            }
        }
    }
}

package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
    public static Connection getConnection() {
        Connection conn = null;

        String url= "jdbc:mysql://localhost:3306/atagvn?&useSSL=false";
        String username = "root";
        String password = "Daikahuynh01091995";

        try {
            // load Driver
            Class.forName("com.mysql.jdbc.Driver");

            // create connection
            conn = DriverManager.getConnection(url, username, password);

            System.out.println("Connected successfully");
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SQLException ex) {
            ex.printStackTrace();
            System.out.println("Error connection " + ex);
        }

        // create connection
        return conn;
    }

    public static void main(String[] args) {
        DBConnect.getConnection();
    }
}

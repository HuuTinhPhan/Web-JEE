package Dao;

import java.io.IOException;
import java.sql.*;
import java.util.List;

import web.*;

public class Connect {
    private static final String url = "jdbc:postgresql://localhost:5432/RegisterProfessor";
    private static final String username = "postgres";
    private static final String password = "113";

    protected static Connection getConnection() {
        Connection conn = null;
        try {
        	try {
        		Class.forName("org.postgresql.Driver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
            conn = DriverManager.getConnection(url, username, password);
            //System.out.println("Connected to PostgreSQL!");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return conn;
    }
    public static void main(String[] args) {
		System.out.println(getConnection());
	}
}

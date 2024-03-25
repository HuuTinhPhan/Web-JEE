package ConnectDB;

import java.sql.*;

public class Connect {
	private static final String url = "jdbc:postgresql://localhost:5432/NtFashion";
	private static final String username = "postgres";
	private static final String password = "123";

	public static Connection getConnection() {
		Connection conn = null;
		try {
			try {
				Class.forName("org.postgresql.Driver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			conn = DriverManager.getConnection(url, username, password);
			// System.out.println("Connected to PostgreSQL!");
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return conn;
	}
}

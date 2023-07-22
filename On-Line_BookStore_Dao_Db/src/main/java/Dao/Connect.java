package Dao;

import java.io.IOException;
import java.sql.*;
import java.util.List;

import web.*;

public class Connect {
    private static final String url = "jdbc:postgresql://localhost:5432/BOOKSTORE";
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
    public  static Book getItem(String itemID) throws IOException {
    	BookDao b = new BookDaoImpDb();
		Book item;
			if (itemID == null) {
				return(null);
			}
		List<Book> books = null;
		try {
			books = b.getAllBooks();
		} catch (Exception e) {
			e.printStackTrace();
		}
		for(Book book: books) {
			item = book;
			if (itemID.equals(item.getBookID())) {
				return(item);
			}
		}
		return(null);
	}
}

package Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import web.*;

public class BookDaoImpDb implements BookDao{
    ArrayList<Book> list = new ArrayList<Book>();
	@Override
	public List<Book> getAllBooks() {
        try {
            String sql = "SELECT id, title, title_plus, description, price FROM books";
            PreparedStatement ps = Connect.getConnection().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Book book = new Book(rs.getString("id"), rs.getString("title"), rs.getString("title_plus"), rs.getString("description"), rs.getDouble("price"));
                list.add(book);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
   
	@Override
	public Book getBook(String bookId) {
	    Book book = null;
	    try {
	        String sql = "SELECT id, title, title_plus, description, price FROM books WHERE id::text = ?";
	        PreparedStatement ps = Connect.getConnection().prepareStatement(sql);
	        ps.setString(1, bookId);
	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {
	            book = new Book(rs.getString("id"), rs.getString("title"), rs.getString("title_plus"), rs.getString("description"), rs.getDouble("price"));
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return book;
	}
}

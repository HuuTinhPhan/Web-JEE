package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import web.Book;

public class BookDaoImpDb implements BookDao{
    List<Book> list;
    private Connection connection;
    public BookDaoImpDb(){
    	list = new ArrayList<Book>();
    	connection = Connect.getConnection();
     }
    @Override
    public void addBook(Book book) {
    	try {
			String sql = "INSERT INTO books (title, title_plus, description, price) VALUES (?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(sql);
			//statement.setString(1, book.getBookID());
			statement.setString(1, book.getTitle());
			statement.setString(2, book.getTitle_plus());
			statement.setString(3, book.getDescription());
			statement.setDouble(4, book.getPrice());
			
			statement.executeUpdate();
			System.out.println("Add book successful.");
    	} catch (Exception e) {
			e.printStackTrace();
		}
    }
    @Override
	public void updateBook(Book book) {
    	
		try {
			String sql = "UPDATE books SET price = ? WHERE id = ?";
			PreparedStatement statement = connection.prepareStatement(sql);
			int bookid = Integer.parseInt(book.getBookID());
			statement.setDouble(1, book.getPrice());
			statement.setInt(2, bookid);
			
			statement.executeUpdate();
			System.out.println("Update book successful.");
			System.out.println("Book: " + book.getBookID() + ", updated in the database");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
    
    @Override
    public void deleteBook(Book book) { 
        try {
        	String sql = "DELETE FROM books WHERE id = ?";
        	PreparedStatement statement = connection.prepareStatement(sql);
        	int bookid = Integer.parseInt(book.getBookID());
        	statement.setInt(1, bookid);
        	statement.executeUpdate();
        	System.out.println("DeleteBook book successful.");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

	@Override
	public List<Book> getAllBooks() {
        try {
        	String sql = "SELECT id, title, title_plus, description, price FROM books ORDER BY id ASC";
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

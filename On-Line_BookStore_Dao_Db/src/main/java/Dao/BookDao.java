package Dao;

import java.util.List;
import web.Book;

public interface BookDao {
	public List<Book> getAllBooks();

	public Book getBook(String bookId);

	public void updateBook(Book book);

	public void deleteBook(Book book);

	public void addBook(Book book);
}

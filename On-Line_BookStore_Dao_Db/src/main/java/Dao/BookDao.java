package Dao;
import java.util.List;
import web.Book;
public interface BookDao {
	   public List<Book> getAllBooks();
	   public Book getBook(String bookId);
}

package web;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Dao.*;


@WebServlet("/BookStore")
public class BookStore extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private List<Book> items;
    private BookDao service ;
    public BookStore() throws IOException {
        super();
        items = new ArrayList<Book>();
        service = new BookDaoImpDb();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String bookId = request.getParameter("bookId");

		Book book = service.getBook(bookId);
		request.setAttribute("book", book);

		String address = null;
		if (book == null) {
			address = "/WEB-INF/source/NoBook.jsp";
		} else {
			address = "/WEB-INF/source/ShowBook.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(address);
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		items = service.getAllBooks();
		request.setAttribute("items", items);
		String address = null;
		address = "/WEB-INF/source/ShowBooks.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(address);
		dispatcher.forward(request, response);

	}
}

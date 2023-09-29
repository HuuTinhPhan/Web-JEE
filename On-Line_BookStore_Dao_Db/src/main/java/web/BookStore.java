package web;
import java.io.IOException;
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
    private BookDao service ;
    public BookStore() throws IOException {
        super();
        service = new BookDaoImpDb();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String bookId = request.getParameter("bookId");

		Book book = service.getBook(bookId);
		request.setAttribute("book", book);

		String address = null;
		if (book == null) {
			address = "NoBook.jsp";
		} else {
			address = "ShowBook.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(address);
		dispatcher.forward(request, response);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		
		String address = null;
		address = "ShowBooks.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(address);
		dispatcher.forward(request, response);

	}
}

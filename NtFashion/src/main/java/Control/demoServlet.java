package Control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class demoServlet
 */
@WebServlet("/demoServlet")
public class demoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DAO service;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public demoServlet() {
        super();
        service = new DaoImplement();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String remove = request.getParameter("productId");
		 PrintWriter out = response.getWriter();
		 out.println(remove);

//		service.removeProduct(remove);
//		String url = "NewFile.jsp";
//		RequestDispatcher rd = request.getRequestDispatcher(url);
//		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

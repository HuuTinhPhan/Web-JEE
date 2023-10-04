package web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.Dao;
import Dao.DaoImpDb;

@WebServlet("/Home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Dao service ;
    String address = null;

    public Home() {
        super();
        this.service = new DaoImpDb();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String noProfessor = request.getParameter("noProfessor");
		List<Student> students = service.getStudentsByProfessor(noProfessor);

		request.setAttribute("students", students);
		address = "showStudentsByprofessor.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(address);
		dispatcher.forward(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String noStudent = request.getParameter("noStudent");
		String noProfessor = request.getParameter("noProfessor");
	
		String flag = request.getParameter("flag");
		if(flag.equals("flag_1")) {
			service.deleteStudentsByProfessor(noStudent, noProfessor);
		}else {
			service.RegisterProfessor(noStudent, noProfessor);
		}
		address = "registerHistory.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(address);
		dispatcher.forward(request, response);
	}

}

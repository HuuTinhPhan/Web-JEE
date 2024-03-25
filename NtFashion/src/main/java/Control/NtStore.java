package Control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modle.Products;

/**
 * Servlet implementation class NtStore
 */
@WebServlet("/NtStore")
public class NtStore extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unused")
	private DAO service;

	public NtStore() throws IOException {
		super();
		service = new DaoImplement();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		request.setCharacterEncoding("UTF-8");
//		response.setCharacterEncoding("UTF-8");
//		response.setContentType("text.html; charset=UTF-8");
		/*
		 * String address = null; address ="/NewFile.jsp"; RequestDispatcher dispatcher
		 * = request.getRequestDispatcher(address); dispatcher.forward(request,
		 * response);
//		 */
		String implement = request.getParameter("implement");
//		PrintWriter p = response.getWriter();
//		p.println(implement);
		if(implement .equals("remove")) {
			String removeProduct = request.getParameter("productId");
			service.removeProduct(removeProduct);
			String url = "products.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(url);
			rd.forward(request, response);
		}
		else if (implement .equals("publishProduct")) {
			String product_name = request.getParameter("product_name");
			String supplier_id = request.getParameter("supplier_id");
			String category_id = request.getParameter("category_id");
			String[] images = request.getParameterValues("images");
			
			if (images != null && images.length > 0) {
				for (int i = 0; i < images.length; i++) {
					images[i] = "images/" + images[i];
				}
			}
		
			String[] colors = request.getParameterValues("colors");
			String[] sizes = request.getParameterValues("sizes");
			String description = request.getParameter("description");
			double price = Double.parseDouble(request.getParameter("price"));

			Products product = new Products(product_name, Integer.parseInt(supplier_id), Integer.parseInt(category_id),
					images, colors, sizes, description, price);
			service.addProduct(product);

			String url = "NewFile.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(url);
			rd.forward(request, response);
		}
			
		

		/*
		 * PrintWriter out = response.getWriter(); out.println("name: " + product_name);
		 * out.println("supplier_id: " + supplier_id); out.println("category_id: " +
		 * category_id); out.println("Images:"); for (String image : images) {
		 * out.println("images/"+image); }
		 * 
		 * out.println("Colors:"); for (String color : colors) { out.println(color); }
		 * 
		 * out.println("Sizes:"); for (String size : sizes) { out.print(size); }
		 * out.println("description: " + description); out.println("price: " + price);
		 */
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		String remove = request.getParameter("productId");
////		 PrintWriter out = response.getWriter();
////		 out.println(remove);
//
//		service.removeProduct(remove);
//		String url = "NewFile.jsp";
//		RequestDispatcher rd = request.getRequestDispatcher(url);
//		rd.forward(request, response);
		
	doGet(request, response);

	}

}

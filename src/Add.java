

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Client;

@WebServlet("/add")
public class Add extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Add() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/WEB-INF/jsp/add.jsp").forward(request,	response);	

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		Long nip = Long.parseLong(request.getParameter("nip"));	 
		String postalcode = request.getParameter("postalcode");
		String city = request.getParameter("city");
		String street = request.getParameter("street");
		String housenumber = request.getParameter("housenumber");
		Integer localnumber = (request.getParameter("localnumber") != null) ? Integer.parseInt(request.getParameter("localnumber")) : null;
		Integer phone = (request.getParameter("phone") != null) ? Integer.parseInt(request.getParameter("phone")) : null;
		String email = (request.getParameter("email") != null) ? request.getParameter("email") : "";
		String tag = (request.getParameter("tag") != null) ? request.getParameter("tag") : "";
		
		Client client = new Client(name, nip, postalcode, city, street, housenumber, localnumber, phone, email, tag);
		Client.Submit(client);
		
		doGet(request, response);
	}

}

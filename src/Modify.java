

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Client;
import dao.Connect;

@WebServlet("/modify")
public class Modify extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Modify() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/WEB-INF/jsp/modify.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		long nip = Long.parseLong(request.getParameter("nip"));
		if(Client.CheckNip(nip) != null) {
			request.setAttribute("result", "Wyszukaj");
			Map<String, String> parameters = Client.CheckNip(nip).getAllParam();
			Set<String> set = parameters.keySet(); 
			for (String klucz : set) {
				request.setAttribute(klucz, parameters.get(klucz));
			}
		}else {
			request.setAttribute("info", "Nie ma takiego numeru NIP w bazie!");
		}
		doGet(request, response);
	}

}


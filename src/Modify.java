

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
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

	private static Map<String, String> clientParam;
	private static Set<String> set;
	private static Long nip;
	public Modify() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/WEB-INF/jsp/modify.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fromModify = request.getParameter("fromModify");
		if(fromModify != null) {
			request.setAttribute("fromModify", fromModify);
			}
		else if(request.getParameter("search") != null) {
			nip = Long.parseLong(request.getParameter("nip"));
			if(Client.CheckNip(nip) != null) {
				request.setAttribute("result", "Wyszukaj");
				clientParam = Client.CheckNip(nip).getAllParam();
				set = clientParam.keySet(); 
				for (String klucz : set) {
					request.setAttribute(klucz, clientParam.get(klucz));
				}
			}
			else {
				request.setAttribute("info", "Nie ma takiego numeru NIP w bazie!");
			}
		}
		else if(request.getParameter("submit") != null) {
			for (String klucz : set) {
				clientParam.put(klucz, request.getParameter(klucz));
			}

			Client client = Client.CheckNip(nip);
			client.setAllParam(clientParam);
			try {
				Connection conn = Connect.getConn();
				PreparedStatement ps = conn.prepareStatement("UPDATE client SET name=?, nip=?, postalcode=?, city=?, street=?,"
						+ "housenumber=?, localnumber=?, phone=?, email=?, tag=? WHERE nip=?;");
				ps.setString(1, client.getName());
				ps.setLong(2, client.getNip());
				ps.setString(3, client.getPostalcode());
				ps.setString(4, client.getCity());
				ps.setString(5, client.getStreet());
				ps.setString(6, client.getHousenumber());
				ps.setString(7, client.getLocalnumber());
				ps.setInt(8, client.getPhone());
				ps.setString(9, client.getEmail());
				ps.setString(10, client.getTag());
				ps.setLong(11, nip);
				ps.executeUpdate();
				ps.close();
				conn.close();
				request.setAttribute("modified", "Zmieniono dane!");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		doGet(request, response);
	}

}


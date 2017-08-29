

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
//		long nip = Long.parseLong(request.getParameter("nip"));
//		if(Client.CheckNip(nip)) {
//			request.setAttribute("result", "Wyszukaj");
//			Connection conn;
//			try {
//				conn = Connect.getConn();
//			} 
//			PreparedStatement ps = conn.prepareStatement("SELECT * FROM client WHERE nip=?;");
//			ps.setLong(1, nip);
//			ResultSet rs = ps.executeQuery();
//			
////			request.setAttribute("name", );
//			catch (SQLException e) {
////			 TODO Auto-generated catch block
////			e.printStackTrace();
//		}
////		}
//		doGet(request, response);
	}

}

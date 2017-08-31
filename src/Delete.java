

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Client;

@WebServlet("/delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Delete() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/WEB-INF/jsp/delete.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Long nip = Long.parseLong(request.getParameter("nip"));
		if(Client.CheckNip(nip) != null) {
			Client.Delete(nip);
			request.setAttribute("info", "Usunięto klienta, z NIPem " +nip);
			getServletContext().getRequestDispatcher("/WEB-INF/jsp/delete.jsp").forward(request, response);
		}else {
			request.setAttribute("info", "Nie ma takiego numeru NIP w bazie!");
			getServletContext().getRequestDispatcher("/WEB-INF/jsp/delete.jsp").forward(request, response);
		}
		
	}

}

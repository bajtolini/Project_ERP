

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/menu")
public class Menu extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public Menu() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/WEB-INF/jsp/menu.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request.getParameter("create") != null) {
			getServletContext().getRequestDispatcher("/WEB-INF/jsp/clients.jsp").forward(request, response);
		}
		if (request.getParameter("delete") != null) {
			getServletContext().getRequestDispatcher("/WEB-INF/jsp/delete.jsp").forward(request, response);
		}
		if (request.getParameter("modify") != null) {
			getServletContext().getRequestDispatcher("/WEB-INF/jsp/modify.jsp").forward(request, response);
		}

	}

}
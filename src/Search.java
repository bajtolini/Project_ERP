

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Client;

/**
 * Servlet implementation class Search
 */
@WebServlet("/search")
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Search() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Client> clients = Client.getAllClients();
		request.setAttribute("clients", clients);
		getServletContext().getRequestDispatcher("/WEB-INF/jsp/search.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Long nip = Long.parseLong(request.getParameter("delete"));
		if(Client.CheckNip(nip) != null) {
			Client.Delete(nip);
			request.setAttribute("info", "Usunięto klienta, którego NIP to: " + nip);
		}else {
			request.setAttribute("info", "Nie ma takiego numeru NIP w bazie!");
		}
		doGet(request, response);
	}

}

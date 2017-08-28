

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Client;

@WebServlet("/clients")
public class Clients extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Clients() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/WEB-INF/jsp/clients.jsp").forward(request,	response);	

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String name = request.getParameter("name");
		 long nip = Long.parseLong(request.getParameter("nip"));	 
		 String postalcode = request.getParameter("postalcode");
		 String city = request.getParameter("city");
		 String street = request.getParameter("street");
		 String housenumber = request.getParameter("housenumber");
		 int localnumber = Integer.parseInt(request.getParameter("localnumber"));
		 int phone = Integer.parseInt(request.getParameter("phone"));;
		 String email = (request.getParameter("email") != null) ? request.getParameter("email") : "";
		 String tag = (request.getParameter("tag") != null) ? request.getParameter("tag") : "";;
		
		 Client client = new Client(name, nip, postalcode, city, street, housenumber, localnumber, phone, email, tag);
		 Client.Submit(client);
		 
		doGet(request, response);
	}

}

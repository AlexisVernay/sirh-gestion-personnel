package dev.sgp.web;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ListerCollaborateursController extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws
	ServletException, IOException {
		//req.setAttribute("listeNoms", Arrays.asList("Robert", "Jean", "Hugues"));
		req.getRequestDispatcher("/views/collab/collaborateurs.jsp").forward(req, resp);		
	}
}

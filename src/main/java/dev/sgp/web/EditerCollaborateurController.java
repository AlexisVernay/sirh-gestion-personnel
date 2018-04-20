package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditerCollaborateurController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String matricule = req.getParameter("matricule");
		if (matricule == null) {
			resp.sendError(400, "Un matricule est attendu");
		} else {
			resp.setContentType("text/html");

			resp.getWriter().write(
					"<h1>Edition de collaborateur</h1>" + "<ul>" + "<li>Matricule :" + matricule + "</li>" + "</ul>");
		}
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws
			ServletException, IOException {
			
			String nom = req.getParameter("nom");
			String prenom = req.getParameter("prenom");
			String dateNaissance = req.getParameter("naissance");
			String adresse = req.getParameter("adresse");
			String numSecurite = req.getParameter("securite");
			if(nom == null || prenom == null || dateNaissance == null || adresse == null || numSecurite == null) {
				resp.sendError(400, "Un de vos paramètre est manquant");
			}

			resp.setStatus(201);
		
		
		
		this.getServletContext().getRequestDispatcher("/views/collab/collaborateurs.jsp").forward(req, resp);
	}
}
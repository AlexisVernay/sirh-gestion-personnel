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
			
			String matricule = req.getParameter("matricule");
			String titre = req.getParameter("titre");
			String nom = req.getParameter("nom");
			String prenom = req.getParameter("prenom");
			if(matricule == null || nom == null || prenom == null) {
				resp.sendError(400, "Un de vos paramètre est manquant");
			}
			else{
				resp.setContentType("text/html");			
				
				resp.getWriter().write("<h1>Edition de collaborateur</h1>"
						+ "<ul>"
						+ "<li>Matricule :"+ matricule + ",</li>"
						+ "<li>Titre :"+ titre + ",</li>"
						+ "<li>Nom :"+ nom + ",</li>"
						+ "<li>Prenom :"+ prenom + ".</li>"
						+ "</ul>");
				resp.setStatus(201);
			}				
	}
}
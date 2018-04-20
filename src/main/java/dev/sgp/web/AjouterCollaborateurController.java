package dev.sgp.web;

import java.io.IOException;
import java.time.LocalDate;
import java.time.ZonedDateTime;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

public class AjouterCollaborateurController extends HttpServlet {
	static int val = 0;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		/*String matricule = req.getParameter("matricule");
		if (matricule == null) {
			resp.sendError(400, "Un matricule est attendu");
		} else {
			resp.setContentType("text/html");

			resp.getWriter().write(
					"<h1>Edition de collaborateur</h1>" + "<ul>" + "<li>Matricule :" + matricule + "</li>" + "</ul>");
		}*/
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");
		String dateNaissance = req.getParameter("naissance");
		String adresse = req.getParameter("adresse");
		String numSecurite = req.getParameter("securite");
		String matricule = "M" + val;
		val++;
		
		String emailPro = prenom + "." + nom + "@dta-ingenierie.fr";
		String photo =  "/img/photo.png";
		ZonedDateTime dateHeureCreation = ZonedDateTime.now();
		
		if(nom == null || prenom == null || dateNaissance == null || adresse == null || numSecurite == null) {
			resp.sendError(400, "Un de vos paramètre est manquant");
		}
		else if(numSecurite.length() != 15) {
			resp.sendError(400, "Votre numéro de sécurité sociale est incorrecte");
		}
		else{
			Collaborateur collaborateur = new Collaborateur(matricule, nom, prenom, LocalDate.parse(dateNaissance), adresse,
					numSecurite, emailPro, photo, dateHeureCreation);

			Constantes.COLLAB_SERVICE.sauvegarderCollaborateur(collaborateur);
			this.getServletContext().getRequestDispatcher("/views/collab/collaborateurs.jsp").forward(req, resp);
		}
	}
}

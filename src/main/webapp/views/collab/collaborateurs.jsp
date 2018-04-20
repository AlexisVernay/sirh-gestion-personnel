<%@page import="dev.sgp.entite.Collaborateur"%>
<%@page import="dev.sgp.util.Constantes"%>
<%@page import="java.util.List"%>
<%@page import="dev.sgp.service.CollaborateurService"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/js/bootstrap.js">
    <title>SGP - App</title>    
  </head>
  
  <body>
    <h1>Les collaborateurs</h1>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp">LOG</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="<%=request.getContextPath()%>/views/collab/collaborateurs.jsp">Collaborateurs</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<%=request.getContextPath()%>/views/statistiques.jsp">Statistiques</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<%=request.getContextPath()%>/views/activités.jsp">Activités</a>
            </li>
          </ul>
        </div>
      </nav>
	
	<div align="right" class="mr-2 mb-3">
      <a href="<%=request.getContextPath()%>/views/collab/newCollaborateur.jsp" class="btn btn-primary">Ajouter un nouveau collaborateur</a>
    </div>

    <form class="ml-4">
      <div class="form-group row">
        <label>Rechercher un nom ou prénom qui commence par:</label>
        <input type="email" class="ml-1 col-2" id="exampleInputEmail1" aria-describedby="emailHelp">     
        <button type="submit" class="btn btn-primary">Rechercher</button>
        <div class="ml-4 form-group form-check" >
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Voir les collaborateurs désactivés</label>
          </div>
      </div>
    </form>

    <div class="ml-2 mb-3 form-group row">
      <p>Filter par département: </p>
      <div class="dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
           Tous
        </button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
          <a class="dropdown-item" href="#">Comptabilité</a>
          <a class="dropdown-item" href="#">Ressources Humaines</a>
          <a class="dropdown-item" href="#">Informatique</a>
        </div>
      </div>
    </div>

    <div class="ml-2 card" style="width: 30rem">
    	<%
    		for (int i = 0; i < Constantes.COLLAB_SERVICE.listerCollaborateurs().size(); i++) {
				Collaborateur collab = Constantes.COLLAB_SERVICE.listerCollaborateurs().get(i);
    	%>
        <h5 class="card-header"><%=collab.getNom()%> <%=collab.getPrenom()%></h5>
        
        <div class="card-body form-group row">     		
          <img src="<%=request.getContextPath()%><%=collab.getPhoto()%>" alt="Photo" class="col" style="height:30%; width:30%">
          <div class="col">
            <p class="card-text">Date de naissance : <%=collab.getDateDeNaissance()%></p>
            <p class="card-text">Adresse : <%=collab.getAdresse()%></p>
            <p class="card-text">Email : <%=collab.getEmailPro()%></p>
            <p class="card-text">Numéro de sécurité sociale : <%=collab.getSecuriteSociale()%></p>      
          </div>
        </div>
        
        <div class="w-100"></div>
        
        <div align="right" class="mr-2">
          <a href="<%=request.getContextPath()%>/views/collab/editCollaborateur.jsp" class="btn btn-primary">Éditer</a>
        </div>   
      
      	<%
		}
		%>
		</div>
  </body>
</html>

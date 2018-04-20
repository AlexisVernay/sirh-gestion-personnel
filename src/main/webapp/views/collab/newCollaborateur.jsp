<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/js/bootstrap.js">

    <title>Ajout Collabo</title>
  </head>
  <body>
    <h1>Nouveau collaborateur</h1>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="./../../index.jsp">LOG</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="collaborateurs.jsp">Collaborateurs</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="statistiques.jsp">Statistiques</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="activités.jsp">Activités</a>
            </li>
          </ul>
        </div>
      </nav>
      
      <form class="ml-4 mt-4" method="post" action="http://localhost:8080/sgp/collaborateurs/ajouter">
	      	<div class="form-group">
	        	<label>Nom</label>
	        	<input type="nom" class="ml-1" id="nom" aria-describedby="nom" name="nom">
	       	</div>
	       	<div class="form-group">
	        	<label>Prénom</label>
	       		<input type="prenom" class="ml-1" id="prenom" aria-describedby="prenom" name="prenom">
	       	</div>
	       	<div class="form-group">
	        	<label>Date de naissance</label>
	        	<input type="jNaissance" class="ml-1" id="jNaissance" aria-describedby="jNaissance" name="naissance">
	       	</div>
	       	<div class="form-group">
	        	<label>Adresse</label>
	        	<input type="adresse" class="ml-1" id="adresse" aria-describedby="adresse" name="adresse">
	       	</div>
	       	<div class="form-group"> 
	        	<label>Numéro de sécurité sociale</label>
	        	<input type="numSociale" class="ml-1" id="numSociale" aria-describedby="numSociale" name="securite">
	       </div>     
	       <button type="submit" class="btn btn-primary">Créer</button>
    	</form>

  </body>
</html>

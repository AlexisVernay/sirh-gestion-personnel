<!DOCTYPE html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="./../../css/bootstrap.min.css">

    <title>Ajout Collabo</title>
  </head>
  <body>
    <h1>Nouveau collaborateur</h1>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <script src="./../../js/bootstrap.min.js"></script>

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
              <a class="nav-link" href="activités.jsp">ActivitÃ©s</a>
            </li>
          </ul>
        </div>
      </nav>
      
      <form class="ml-4 mt-4">
      	<div class="form-group">
        	<label>Nom</label>
        	<input type="nom" class="ml-1" id="nom" aria-describedby="nom">
       	</div>
       	<div class="form-group">
        	<label>PrÃ©nom</label>
       		<input type="prÃ©nom" class="ml-1" id="prénom" aria-describedby="prÃ©nom">
       	</div>
       	<div class="form-group">
        	<label>Date de naissance</label>
        	<input type="jNaissance" class="ml-1" id="jNaissance" aria-describedby="jNaissance">
       	</div>
       	<div class="form-group">
        	<label>Adresse</label>
        	<input type="adresse" class="ml-1" id="adresse" aria-describedby="adresse">
       	</div>
       	<div class="form-group"> 
        	<label>Numéro de sécurité sociale</label>
        	<input type="numSociale" class="ml-1" id="numSociale" aria-describedby="numSociale">
       </div>     
       <button type="submit" class="btn btn-primary">Créer</button>
    	</form>

  </body>
</html>

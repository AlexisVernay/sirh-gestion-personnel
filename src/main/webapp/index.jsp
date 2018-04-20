<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/js/bootstrap.js">

    <title>Collabo</title>
  </head>
  <body>
    <h1>Accueil</h1>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="index.jsp">LOG<span class="sr-only">(current)</span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="views/collab/collaborateurs.jsp">Collaborateurs</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="views/collab/statistiques.jsp">Statistiques</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="views/collab/activites.jsp">Activit�s</a>
            </li>
          </ul>
        </div>
      </nav>

  </body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>liste des Livre</title>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>
<div  class="card col-md-8 offset-2">
  <div class="card-header text-center bg-dark text-light"> Afficher les livres</div>
  <div class="card-body">
    <table class="table table-striped">
      <tr>
        <th> ISBN</th>
        <th>titre</th>
        <th>nombre Exemplaire</th>
        <th></th>
        <th></th>
        <th></th>
      </tr>
      <c:forEach items="${Listlivre}" var="L">
        <tr>
          <td> ${L.isbn}</td>
          <td> ${L.titre}</td>
          <td> ${L.nbrexemplaire}</td>
          <td> <a href="EmprunterCurrentLivre.do?isbn=${L.isbn}" class="badge-danger">Emprunter</a>  </td>
          <td> <a href="LivreExemplaire.do?isbn=${L.isbn}" class="badge-danger">exemplaire</a>  </td>
          <td> <a onclick="return confirm('etes voius sure?')" href="Supprimer.do?ISBN=${L.isbn}" class="badge-secondary"  > delete</a>  </td>
          <td> <a href="Modifier.do?isbn=${L.isbn}" class="badge-danger">update</a>  </td>
        </tr>
      </c:forEach>
    </table>
    <div>
      <a href="index.jsp" class="badge-success">menu</a>
    </div>
  </div>

</div>
</body>
</html>
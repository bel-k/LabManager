<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>liste des client</title>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>
<div  class="card col-md-8 offset-2">
  <div class="card-header text-center bg-dark text-light"> Afficher les Exemplaire du livre : ${isbn} </div>
  <div class="card-body">
    <table class="table table-striped">
      <tr>
        <th> code</th>
        <th>isbn</th>
        <th>disponibilite</th>
        <th></th>
        <th></th>
        <th></th>
      </tr>
      <c:forEach items="${exemplaireParIsbn}" var="L">
        <tr>
          <td> ${L.code}</td>
          <td> ${L.isbn}</td>
          <td> ${L.disp}</td>
          <td> <a href="ajouterEmprunt.em?code=${L.code}" class="badge-secondary"  > delete</a>  </td>
          <td> <a onclick="return confirm('etes voius sure?')" href="SupprimerExemplaire.eo?code=${L.code}" class="badge-secondary"  > delete</a>  </td>
          <td> <a href="ModifierExemplaire.eo?code=${L.code}" class="badge-danger">update</a>  </td>
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
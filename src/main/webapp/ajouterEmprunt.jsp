<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>liste des Adherents</title>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>
<div  class="card col-md-8 offset-2">
  <div class="card-header text-center bg-dark text-light"> Afficher les Adherents</div>
  <div class="card-body">
    <table class="table table-striped">
      <tr>
        <th> CIN</th>
        <th>NOM</th>
        <th>PRENOM</th>
        <th></th>
        <th></th>
      </tr>
      <c:forEach items="${listeAdherents}" var="L">
        <tr>
          <td> ${L.cin}</td>
          <td> ${L.nom}</td>
          <td> ${L.prenom}</td>
          <td> <a onclick="return confirm('etes voius sure?')" href="SupprimerAdherent.do?cin=${L.cin}" class="badge-secondary"  > delete</a>  </td>
          <td> <a href="ModifierAdherent.do?cin=${L.cin}" class="badge-danger">update</a>  </td>
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
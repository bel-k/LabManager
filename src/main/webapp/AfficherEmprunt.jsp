<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>liste des Emprunt</title>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>
<div  class="card col-md-8 offset-2">
  <div class="card-header text-center bg-dark text-light"> Afficher les Emprunt</div>
  <div class="card-body">
    <table class="table table-striped">
      <tr>
        <th> ISBN</th>
        <th>CIN</th>
        <th>DATE</th>
        <th></th>
        <th></th>
      </tr>
      <c:forEach items="${listeemprunts}" var="L">
        <tr>
          <td> ${L.code}</td>
          <td> ${L.cin}</td>
          <td> ${L.dateemprunt}</td>
<%--          <td> <a onclick="return confirm('etes voius sure?')" href="SupprimerEmprunt.em?cin=${L.cin}&isbn=${L.isbn}" class="badge-secondary"  > delete</a>  </td>--%>
<%--          <td> <a href="SupprimerEmprunt.em?cin=${L.cin}" class="badge-danger">update</a>  </td>--%>
        </tr>
      </c:forEach>
    </table>
  </div>
  <div>
    <a href="index.jsp" class="badge-success">menu</a>
  </div>

</div>
</body>
</html>
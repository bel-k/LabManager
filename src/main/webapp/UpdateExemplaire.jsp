<%--
  Created by IntelliJ IDEA.
  User: Electro Fatal
  Date: 2023-03-07
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>confirmation</title>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>

<div  class="card col-md-8 offset-2">
  <div class="card-header text-center bg-dark text-light"> Modifier Exemplaire</div>
  <div class="card-body">
    <form action="SaveUpdateExemplaire.eo" method="post">
      <div class="form-group">
        <label class="control-label"> Code</label>
        <input type="text" name="CODE" class="form-control" value="${code}" readonly="readonly" />

        <span></span>
      </div>
      <div class="form-group">
        <label class="control-label"> Code</label>
        <input type="text" name="ISBN" class="form-control" value="${isbn}" readonly="readonly" />

        <span></span>
      </div>
      <div class="form-group">
        <label class="control-label"> disponibilite</label>
        <input type="text" name="Disp" class="form-control"/>
        <span></span>
      </div>
      <div>
        <button type="submit" class="btn btn-primary"> save</button>
      </div>



    </form>

  </div>

</div>
</body>
</html>

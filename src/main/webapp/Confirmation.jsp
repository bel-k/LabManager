<%--
  Created by IntelliJ IDEA.
  User: Electro Fatal
  Date: 2023-03-06
  Time: 17:27
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
  <div class="card-header text-center bg-dark text-light"> confirmation</div>
  <div class="card-body">
    <div class="form-group">
      <label> ID:</label>
      <label> ${emisbn}</label>
    </div>
    <div class="form-group">
      <label> Titre:</label>
      <label> ${emcin}</label>
    </div>
    <div class="form-group">
      <button  type="submit" class="btn btn-primary">ok</button>
    </div>

  </div>

</div>
</body>
</html>

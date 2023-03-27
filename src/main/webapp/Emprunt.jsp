<%--
  Created by IntelliJ IDEA.
  User: Electro Fatal
  Date: 2023-03-06
  Time: 17:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Ajouter Emprunt</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>
<div  class="card col-md-8 offset-2">
    <div class="card-header text-center bg-dark text-light"> ajouter Emprunt</div>


    <div class="card-body">
        <div>
        <table>
            <tr>
                <th> code</th>
                <th>isbn</th>
                <th>disponibilite</th>
            </tr>
            </tr>
            <c:forEach items="${code}" var="livre">
                <tr>
                    <td> ${livre.code}</td>
                    <td> ${livre.isbn}</td>
                    <td> ${livre.disp}</td>

                </tr>
            </c:forEach>
        </table></div>
        <form action="EnregistrerEmprunt.em" method="post">
            <form name="f1" method="get" action="#">
                <div class="form-group">

                    <label class="control-label"> ISBN</label>

                    <select class="form-control inputstl"  name="clr">
                        <c:forEach items="${listeclients}" var="clients">

                            <option value="${clients.cin}" >${clients.cin}</option>

                        </c:forEach>
                    </select>
                    <span></span>
                </div>

                <div>
                    <a onclick="return confirm('etes voius sure?')" href="SupprimerClient.co?cin=${L.cin}" class="badge-secondary"  > delete</a>
                </div>



            </form>



    </div>

</div>
</body>
</html>
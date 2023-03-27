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
    <title>Ajouter </title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>
<div  class="card col-md-8 offset-2">
    <div class="card-header text-center bg-dark text-light"> ajouter Emprunt</div>
    <div class="card-body">
        <form name="f1" method="get" action="#">
            <div class="form-group">

                    <label class="control-label"> ISBN</label>

                    <select class="form-control inputstl"  name="clr">
                        <c:forEach items="${listeclients}" var="L">

                            <option value="${L.cin}" >${L.cin}</option>

                        </c:forEach>
                    </select>
                    <span></span>
                </div>
            <div>
                <label class="control-label"> CIN</label>
                <input type="text" name="CIN" class="form-control"/>
                <span></span>
            </div>

            <div>
                <input type="submit" name="submit" value="Select Color"/>
            </div>



        </form>
    </div>

</div>
</body>
</html>
<%--<form name="f1" method="get" action="#">--%>
<%--    <select name="clr">--%>
<%--        <c:forEach items="${listeclients}" var="L">--%>

<%--            <option value="${L.cin}" >${L.cin}</option>--%>

<%--        </c:forEach>--%>
<%--    </select>--%>
<%--    <input type="submit" name="submit" value="Select Color"/>--%>
<%--</form>--%>
<%
    String s=request.getParameter("clr");
    if (s !=null)
    {
        out.println("Selected Color is : "+s);
    }
%>
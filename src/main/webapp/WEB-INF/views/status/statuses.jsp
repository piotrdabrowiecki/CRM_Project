<%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 13.01.19
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Statuses</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/CRM_war_exploded/css/style.css">
</head>
<body>



<h2>Statuses List </h2>

<div class="container">
<table border="4" bgcolor="#b0c4de" class="table">



    <tr class="dark">
        <td><b>Id</b></td>
        <td><b>Status Name</b></td>
        <td><b>Is Active ?</b></td>
        <td></td>
    </tr>


    <c:forEach items="${statuses}" var="status">


        <tr>
            <td>${status.id}</td>
            <td>${status.name}</td>
            <td>${status.activity}</td>
            <td><a href="/CRM_war_exploded/status/deleteStatus?id=${status.id}">delete Status</a></td>
        </tr>


    </c:forEach>





</table>
</div>


<br>
<br>
<br>
<span class="a">
<td class="a"><a href="/CRM_war_exploded/admin/admin" class="linkPosition">Admin Main Page</a></td>
</span>



</body>
</html>

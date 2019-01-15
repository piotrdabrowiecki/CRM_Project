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
</head>
<body>


<table border="4" bgcolor="#b0c4de" >



    <tr>
        <td><b>Id</b></td>
        <td><b>Name</b></td>
        <td><b>Activity</b></td>
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






</body>
</html>

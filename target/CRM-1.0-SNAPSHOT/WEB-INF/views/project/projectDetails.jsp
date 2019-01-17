<%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 13.01.19
  Time: 21:23
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Project Details</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="/CRM_war_exploded/css/style.css">
</head>
<body>


<table border="4" bgcolor="#f0f8ff" >



    <tr class="dark">
        <td><b>Id</b></td>
        <td><b>Name</b></td>
        <td><b>Created</b></td>
        <td><b>Description</b></td>
        <td><b>Project users list</b></td>
    </tr>



    <tr>
        <td>${projectDetails.id}</td>
        <td>${projectDetails.name}</td>
        <td>${projectDetails.created}</td>
        <td>${projectDetails.description}</td>
        <td>
            <ul>
                <c:forEach items="${projectDetails.users}" var="user">

                    <li>${user.name}</li>
                    <li>${user.surname}</li>

                </c:forEach>
            </ul>
        </td>
    </tr>




</table>














</body>
</html>

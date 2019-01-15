<%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 13.01.19
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Task Details</title>
</head>
<body>



<table border="4" bgcolor="#f0f8ff" >



    <tr>
        <td><b>Id</b></td>
        <td><b>Subject</b></td>
        <td><b>Description</b></td>
        <td><b>Created</b></td>
        <td><b>Project</b></td>
        <td><b>Status</b></td>
        <td><b>Priority</b></td>
        <td><b>User</b></td>
    </tr>



    <tr>
        <td>${taskDetails.id}</td>
        <td>${taskDetails.subject}</td>
        <td>${taskDetails.description}</td>
        <td>${taskDetails.created}</td>
        <td>${taskDetails.project}</td>
        <td>${taskDetails.status}</td>
        <td>${taskDetails.priority}</td>
        <td>${taskDetails.user}</td>
    </tr>




</table>






</body>
</html>

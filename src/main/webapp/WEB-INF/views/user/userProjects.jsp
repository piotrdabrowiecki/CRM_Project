<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 23.01.19
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Your Projects</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/CRM_war_exploded/css/style.css">
</head>
<body class="user">


<table border="4" bgcolor="#b0c4de" class="table" >

    <tr class="dark">
        <td><b>Project's Name</b></td>
        <td><b>Description</b></td>
        <td><b>Is Active?</b></td>
        <td><b>Created</b></td>
        <td><b>WWW</b></td>
        <td><b>Users currently working on the project</b></td>
        <td><b>Project's tasks</b></td>
    <tr>



    <c:forEach items="${userProjects}" var="project">
  <tr>


    <td>${project.name}</td>
    <td>${project.description}</td>
    <td>${project.activity}</td>
    <td>${project.created}</td>
    <td>${project.www}</td>

    <td width="70%">
        <ul>
            <c:forEach items="${project.users}" var="user">

                <p><span class="glyphicon glyphicon-user"></span></p>
                <li>${user.name} ${user.surname}</li>


            </c:forEach>
        </ul>
    </td>
    <td>
        <ul>
            <c:forEach items="${project.tasks}" var="task">

                <p><span class="glyphicon glyphicon-tasks"></span></p>
                <li>${task.subject}</li>

            </c:forEach>
        </ul>
    </td>

  </tr>
</c:forEach>



</table>






</body>



</html>

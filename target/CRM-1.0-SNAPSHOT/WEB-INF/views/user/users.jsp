<%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 13.01.19
  Time: 21:17
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User List</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/CRM_war_exploded/css/style.css">
</head>
<body class="admin">


<h2>User List</h2>
<br>
<br>
<div class="container">
<table border="4" bgcolor="#E0FFFF" class="table">



     <tr class="dark">
         <td><b>Id</b></td>
         <td><b>Name</b></td>
         <td><b>Surname</b></td>
         <td><b>Login</b></td>
         <td><b>Password</b></td>
         <td><b>User's tasks</b></td>
         <td><b>User's projects</b></td>

         <td><b>edit User</b></td>
         <td><b>delete User</b></td>
     </tr>


    <c:forEach items="${users}" var="user">


        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.surname}</td>
            <td>${user.login}</td>
            <td>${user.password}</td>
            <td>
                <ul>
                <c:forEach items="${user.tasks}" var="task">

                   <li>name:${task.subject} - is active?:${task.status.activity} - from project: ${task.project.name}</li>

                </c:forEach>
                </ul>
            </td>
            <td>
                <ul>
                    <c:forEach items="${user.projects}" var="project">

                        <li>${project.name}</li>

                    </c:forEach>
                </ul>
            </td>
            <td><c:if test="${user.login !='admin'}"><a href="/CRM_war_exploded/user/editUser?id=${user.id}">edit User</a></c:if></td>
            <td><c:if test="${user.login !='admin'}"><a href="/CRM_war_exploded/user/deleteUser?id=${user.id}">delete User</a></c:if></td>
        </tr>

    </c:forEach>





</table>
</div>
<br>
<br>
<br>
<span class="a">
<a href="/CRM_war_exploded/admin/admin" class="link">Admin Main Page</a>
</span>







</body>
</html>

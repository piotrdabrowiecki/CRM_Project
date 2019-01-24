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
    <title>Project List</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/CRM_war_exploded/css/style.css">
</head>
<body>

<h2>Project List</h2>


<div class="container">
<table border="4" bgcolor="#b0c4de" class="table" >



    <tr class="dark">
        <td><b>Project's Name</b></td>
        <td><b>Description</b></td>
        <td><b>Activity</b></td>
        <td><b>Created</b></td>
        <td><b>WWW</b></td>
        <td><b>Project's users</b></td>
        <td><b>Project's tasks</b></td>

        <td><b>list of Project's tasks</b></td>
        <td><b>Project's details</b></td>
        <td><b>edit Project</b></td>
        <td><b>delete Project</b></td>
    <tr>


    <c:forEach items="${projects}" var="project">


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
            <td><a href="/CRM_war_exploded/project/projectTasks?id=${project.id}">list of Project's tasks</a></td>
            <td><a href="/CRM_war_exploded/project/projectDetails?id=${project.id}">Project's details</a></td>
            <td><a href="/CRM_war_exploded/project/editProject?id=${project.id}">edit Project</a></td>
            <td><a href="/CRM_war_exploded/project/deleteProject?id=${project.id}">delete Project</a></td>
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

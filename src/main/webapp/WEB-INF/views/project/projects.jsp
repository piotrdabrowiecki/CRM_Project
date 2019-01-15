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
</head>
<body>


<table border="4" bgcolor="#b0c4de" >



    <tr>
        <td><b>Project's Name</b></td>
        <td><b>Description</b></td>
        <td><b>Created</b></td>
        <td><b>WWW</b></td>
        <td><b>Project's users</b></td>
        <td><b>Project's tasks</b></td>

        <td><b>list of Project's tasks</b></td>
        <td><b>Project's details</b></td>
        <td><b>edit Project</b></td>
        <td><b>delete Project</b></td>
    </tr>


    <c:forEach items="${projects}" var="project">


        <tr>
            <td>${project.name}</td>
            <td>${project.description}</td>
            <td>${project.created}</td>
            <td>${project.www}</td>
            <td>
                <ul>
                    <c:forEach items="${project.users}" var="user">

                        <li>${user.name}</li>
                        <li>${user.surname}</li>

                    </c:forEach>
                </ul>
            </td>
            <td>
                <ul>
                    <c:forEach items="${project.tasks}" var="task">

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












</body>
</html>

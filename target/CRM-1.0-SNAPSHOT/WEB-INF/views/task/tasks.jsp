<%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 13.01.19
  Time: 21:24
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Task List</title>
</head>
<body>


<table border="4" bgcolor="#b0c4de" >



    <tr>
        <td><b>Id</b></td>
        <td><b>Subject</b></td>
        <td><b>Description</b></td>
        <td><b>Created</b></td>
        <td><b>Status</b></td>
        <td><b>Priority</b></td>
        <td><b>User</b></td>
        <td><b>Project</b></td>

        <td><b>Task details</b></td>
        <td><b>edit Task</b></td>
        <td><b>delete Task</b></td>

    </tr>


    <c:forEach items="${tasks}" var="task">


        <tr>
            <td>${task.id}</td>
            <td>${task.subject}</td>
            <td>${task.description}</td>
            <td>${task.created}</td>
            <td>${task.status}</td>
            <td>${task.priority}</td>
            <td>${task.user}</td>

            <td>${task.project}</td>

            <td><a href="/CRM_war_exploded/task/taskDetails?id=${task.id}">Task details</a></td>
            <td><a href="/CRM_war_exploded/task/editTask?id=${task.id}">edit Task</a></td>
            <td><a href="/CRM_war_exploded/task/deleteTask?id=${task.id}">delete Task</a></td>

        </tr>


    </c:forEach>





</table>






</body>
</html>

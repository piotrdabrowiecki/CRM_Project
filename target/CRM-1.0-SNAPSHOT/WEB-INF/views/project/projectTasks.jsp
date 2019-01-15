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
    <title>Title</title>
</head>
<body>


<table border="4" bgcolor="#f0f8ff" >



    <tr>
        <td><b>Id</b></td>
        <td><b>Name</b></td>
        <td><b>Project's tasks</b></td>
    </tr>



    <tr>
        <td>${projectTasks.id}</td>
        <td>${projectTasks.name}</td>
        <td>
            <ul>
                <c:forEach items="${projectTasks.tasks}" var="task">

                    <li>${task.subject}</li>
                    <li>${task.description}</li>
                    <li>${task.created}</li>
                    <li>${task.status}</li>
                    <li>${task.priority}</li>
                    <li>${task.user}</li>

                </c:forEach>
            </ul>
        </td>
    </tr>




</table>










</body>
</html>

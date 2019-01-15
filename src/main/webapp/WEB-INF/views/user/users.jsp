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
</head>
<body>


<h2>User List</h2>
<br>
<br>

<table border="4" bgcolor="#E0FFFF" >



     <tr>
         <td><b>Id</b></td>
         <td><b>Name</b></td>
         <td><b>Surname</b></td>
         <td><b>Password</b></td>
         <td><b>User's tasks</b></td>
         <td><b>User's projects</b></td>
     </tr>


    <c:forEach items="${users}" var="user">


        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.surname}</td>
            <td>${user.password}</td>
            <td>
                <ul>
                <c:forEach items="${user.tasks}" var="task">

                   <li>${task.subject}</li>

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
        </tr>

    </c:forEach>





</table>








</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 13.01.19
  Time: 18:59
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Home Page</title>
    <link rel="stylesheet" href="/CRM_war_exploded/css/style.css">

</head>

<body>

<ul class="ul2">


    <li class="li2"><a href="/CRM_war_exploded/user/registerUser">REGISTER</a></li>
    <li class="li2"><a href="/CRM_war_exploded/user/loginUser">LOGIN</a></li>

</ul>






<table  bgcolor="#b0c4de" >

    <tr class="dark">
        <td height="50" colspan="6" style="font-size: 25px;">5 most recent projects</td>
    </tr>

    <tr class="dark">
        <td><b>Project's Name</b></td>
        <td><b>Description</b></td>
        <td><b>Created</b></td>
        <td><b>WWW</b></td>
        <td><b>Project's users</b></td>
        <td><b>Project's tasks</b></td>
    </tr>



    <c:forEach items="${projects}"  var="project">


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
    </tr>




</c:forEach>



</table>























</body>
</html>

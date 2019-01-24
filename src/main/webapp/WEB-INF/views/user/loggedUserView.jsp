<%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 23.01.19
  Time: 18:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<html>
<head>
    <title>Welcome ${user.name} ${user.surname}</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/CRM_war_exploded/css/style.css">
</head>
<body>




<span>
    <td><a href="/CRM_war_exploded/user/editUser?id=${user.id}">edit Your Profile</a></td>
</span>

<span>
    <td><a href="/CRM_war_exploded/user/deleteUser?id=${user.id}">delete Your Account</a></td>
</span>

<span>
    <td><a href="/CRM_war_exploded/user/userProjects?id=${user.id}">view Your Projects</a></td>
</span>


<span>
    <td><a href="/CRM_war_exploded/user/logout">Logout</a></td>
</span>






</body>
</html>

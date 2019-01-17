<%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 14.01.19
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>edit User</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="/CRM_war_exploded/css/style.css">
</head>
<body>


<form:form modelAttribute = "editUser" method = "post" >




    <td><b>Name</b></td><br>
    <form:input path = "name" /><br>
    <td><b>Surname</b></td><br>
    <form:input path = "surname" /><br>
    <td><b>Password</b></td><br>
    <form:input path = "password" /><br>
    <td><b>Login</b></td><br>
    <form:input path = "login" /><br>

    <td><b>Choose Projects</b></td><br>
    <form:select path="projects" multiple="true">
        <form:options items="${projects}" itemValue ="id" itemLabel="name" />
    </form:select>
    <br>


    <br>
    <br>
    <input type = "submit" value="Update User"/>



</form:form>














</body>
</html>

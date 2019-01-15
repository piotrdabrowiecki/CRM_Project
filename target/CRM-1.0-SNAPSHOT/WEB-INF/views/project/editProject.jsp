<%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 15.01.19
  Time: 09:36
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Project</title>
</head>
<body>



<form:form modelAttribute = "editProject" method = "post" >




    <td><b>Name</b></td><br>
    <form:input path = "name" /><br>
    <td><b>Description</b></td><br>
    <form:input path = "description" /><br>
    <td><b>Activity</b></td><br>
    <form:input path = "activity" /><br>

    <td><b>Project's users</b></td><br>
    <form:select path="users" multiple="true">
        <form:options items="${users}" itemValue ="id" itemLabel="name" path="users.id" />
    </form:select>
    <br>
    <td><b>Project's tasks</b></td><br>
    <form:select path="tasks" multiple="true">
        <form:options items="${tasks}" itemValue="id" itemLabel="subject"/>
    </form:select>


    <br>
    <br>
    <input type = "submit" value="Update Project"/>



</form:form>





</body>
</html>

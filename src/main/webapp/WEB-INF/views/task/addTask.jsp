<%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 13.01.19
  Time: 21:26
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add New Task</title>
    <link rel="stylesheet" href="/CRM_war_exploded/css/style.css">
</head>
<body class="admin">


<form:form modelAttribute = "task" method = "post" >

    <%--<form:errors path = "*" /> --%>


    <td><b>Subject</b></td>
    <form:input path = "subject" />
    <form:errors path ="subject" />
    <br>

    <td><b>Description</b></td>
    <form:input path = "description" />
    <form:errors path ="description" />
    <br>

    <td><b>Choose Status</b></td><br>
    <form:select path="status" multiple="false">
        <form:options items="${statuses}" itemValue ="id" itemLabel="name" />
    </form:select>
    <br>

    <td><b>Choose Priority</b></td><br>
    <form:select path="priority" multiple="false">
        <form:options items="${priorities}" itemValue="id" itemLabel="name"/>
    </form:select>
    <br>

    <td><b>Choose Project</b></td><br>
    <form:select path="project" multiple="false">
        <form:options items="${projects}" itemValue ="id" itemLabel="name" />
    </form:select>
    <br>

    <td><b>Choose User</b></td><br>
    <form:select path="user" multiple="false">
        <form:options items="${users}" itemValue="id" itemLabel="name"/>
    </form:select>




    <br>
    <input type = "submit" value="AddTask" />




</form:form>








</body>
</html>

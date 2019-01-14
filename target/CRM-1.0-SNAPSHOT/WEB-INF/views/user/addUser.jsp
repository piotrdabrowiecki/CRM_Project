<%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 13.01.19
  Time: 21:17
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User</title>
</head>
<body>



<form:form modelAttribute = "user" method = "post" >

    <%--<form:errors path = "*" /> --%>


    <td><b>Name</b></td>
    <form:input path = "name" />
    <form:errors path ="name" />
    <br>

    <td><b>Surname</b></td>
    <form:input path = "surname" />
    <form:errors path ="surname" />
    <br>

    <td><b>Password</b></td>
    <form:input path = "password" />
    <form:errors path ="password" />
    <br>


    <td><b>Projects</b></td>
    <form:select path="projects">
        <form:options items="${projects}" itemValue ="id" itemLabel="name" />
    </form:select>
    <form:errors path ="projects" />




    <input type = "submit" value="AddUser" />




</form:form>





</body>
</html>

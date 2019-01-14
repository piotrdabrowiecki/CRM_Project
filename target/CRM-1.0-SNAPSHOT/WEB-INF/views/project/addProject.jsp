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
    <title>Title</title>
</head>
<body>

<form:form modelAttribute = "project" method = "post" >

    <%--<form:errors path = "*" /> --%>


    <td><b>Name</b></td>
    <form:input path = "name" />
    <form:errors path ="name" />
    <br>

    <td><b>Description</b></td>
    <form:input path = "description" />
    <form:errors path ="description" />
    <br>

    <td><b>www</b></td>
    <form:input path = "www" />
    <form:errors path ="www" />
    <br>



    <input type = "submit" value="AddProject" />




</form:form>









</body>
</html>

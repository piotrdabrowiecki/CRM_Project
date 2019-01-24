<%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 23.01.19
  Time: 18:05
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Login</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="/CRM_war_exploded/css/style.css">

</head>
<body>



<form:form modelAttribute = "user" method = "post" >

    <%--<form:errors path = "*" /> --%>


    <td><b>Login</b></td>
    <form:input path = "login" />
    <form:errors path ="login" />
    <br>

    <td><b>Password</b></td>
    <form:input path = "password" />
    <form:errors path ="password" />
    <br>



    <input type = "submit" value="Login" />




</form:form>









</body>
</html>

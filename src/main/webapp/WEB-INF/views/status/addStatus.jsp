<%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 13.01.19
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/CRM_war_exploded/css/style.css">
</head>
<body class="admin">



<form:form modelAttribute = "status" method = "post" >

    <%--<form:errors path = "*" /> --%>


    <td><b>Name</b></td>
    <form:input path = "name" />
    <form:errors path ="name" />
    <br>

    <td><b>Activity</b></td>
    <form:input path = "activity" />
    <form:errors path ="activity" />
    <br>



    <br>
    <input type = "submit" value="AddStatus" />




</form:form>





</body>
</html>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 16.01.19
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Statuses</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="/CRM_war_exploded/css/style.css">
</head>
<body>



<form  method = "post" >


    <c:forEach items="${statuses}" var="status">


        ${status.name}
        <br>

    <b>Change Activity</b><br>
    <select name = "status-${status.id}" value = "${status.activity}">
        <option value = "false" >Inactive</option>
        <option value = "true" >Active</option>
    </select>
    <br><br>

    </c:forEach>

    <br>
    <br>

    <input type = "submit" value="Update Statuses"/>


</form>











</body>
</html>

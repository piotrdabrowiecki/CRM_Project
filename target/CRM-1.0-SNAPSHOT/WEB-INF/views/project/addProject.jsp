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
    <title>add new Project</title>
</head>
<body>


<form:form modelAttribute = "project" method = "post" >

    <%--<form:errors path = "*" /> --%>

    <div class="form-group">
    <td><b>Name</b></td>
    <form:input path = "name" />
    <form:errors path ="name" />
    </div>
    <br>
    <div class="form-group">
    <td><b>Description</b></td>
    <form:input path = "description" />
    <form:errors path ="description" />
    </div>
    <br>
    <div class="form-group">
    <td><b>Activity</b></td>
    <form:input path = "activity" />
    <form:errors path ="activity" />
    </div>
    <br>
    <div class="form-group">
    <td><b>www</b></td>
    <form:input path = "www" />
    <form:errors path ="www" />
    </div>
    <br>




    <input type = "submit" value="AddProject" />




</form:form>









</body>
</html>

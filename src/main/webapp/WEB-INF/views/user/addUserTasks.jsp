<%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 14.01.19
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>add User Tasks</title>
</head>
<body>


<form:form modelAttribute = "user" method = "post" >

    <%--<form:errors path = "*" /> --%>



    <c:forEach items="${user.projects}" var="project">

        ${project.name}

        <form:select path="tasks" multiple="true">
            <form:options items="${project.tasks}" itemValue="id" itemLabel="subject"/>
        </form:select>



    </c:forEach>



    <input type = "submit" value="AddUser" />




</form:form>













</body>
</html>

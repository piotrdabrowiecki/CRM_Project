<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 23.01.19
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Your Projects</title>
</head>
<body>


<td>
    <ul>
        <c:forEach items="${user.projects}" var="project">

            <li>${project.name}</li>
            <li>${project.description}</li>

        </c:forEach>
    </ul>
</td>








</body>
</html>

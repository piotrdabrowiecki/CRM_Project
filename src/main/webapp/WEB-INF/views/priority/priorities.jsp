<%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 13.01.19
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<table border="4" bgcolor="#b0c4de" >



    <tr>
        <td><b>Id</b></td>
        <td><b>Name</b></td>
        <td><b>Activity</b></td>
    </tr>


    <c:forEach items="${priorities}" var="priority">


        <tr>
            <td>${priority.id}</td>
            <td>${priority.name}</td>
            <td>${priority.activity}</td>
            <td><a href="/CRM_war_exploded/priority/deletePriority?id=${priority.id}">delete Priority</a></td>
        </tr>


    </c:forEach>





</table>




</body>
</html>

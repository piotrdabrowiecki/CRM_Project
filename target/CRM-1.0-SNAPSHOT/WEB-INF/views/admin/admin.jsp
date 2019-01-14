<%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 13.01.19
  Time: 20:46
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
</head>
<body>


<h2>Admin Page</h2>


<br>
<td><b>Projects</b></td>
<br>
<td><a href="/CRM_war_exploded/project/projects">Projects List</a></td>
<br>
<td><a href="/CRM_war_exploded/project/addProject">Add New Project</a></td>
<br>
<br>
<td><b>Users</b></td>
<br>
<td><a href="/CRM_war_exploded/user/users">User List</a></td>
<br>
<td><a href="/CRM_war_exploded/user/addUser">Add New User</a></td>
<br>
<br>
<td><b>Statuses</b></td>
<br>
<td><a href="/CRM_war_exploded/task_status/statuses">Projects' Statuses</a></td>
<br>
<td><a href="/CRM_war_exploded/task_status/addStatus">Add status to a Project</a></td>
<br>
<br>
<td><b>Priority</b></td>
<br>
<td><a href="/CRM_war_exploded/task_priority/priorities">Projects' Priorities</a></td>
<br>
<td><a href="/CRM_war_exploded/task_priority/addPriority">Add priority to a Project</a></td>
<br>










</body>
</html>

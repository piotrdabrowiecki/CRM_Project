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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>


<h2>Admin Page</h2>



<div class="container">
<table border="2" bgcolor="#E0FFFF" class="table">

    <tr>
<td><b>Projects</b></td>

<td><a href="/CRM_war_exploded/project/projects">Projects List<p><span class="glyphicon glyphicon-list"></span></p></a></td>

<td><a href="/CRM_war_exploded/project/addProject">Add New Project</a></td>
    </tr>
    <tr>
<td><b>Users</b></td>

<td><a href="/CRM_war_exploded/user/users">User List<p><span class="glyphicon glyphicon-list"></span></p></a></td>

<td><a href="/CRM_war_exploded/user/addUser">Add New User<p><span class="glyphicon glyphicon-user"></span></p></a></td>
    </tr>
    <tr>
<td><b>Tasks</b></td>

<td><a href="/CRM_war_exploded/task/tasks">Task List<p><span class="glyphicon glyphicon-list"></span></p></a></td>

<td><a href="/CRM_war_exploded/task/addTask">Add New Task</a></td>
    </tr>
    <tr>
<td><b>Statuses</b></td>

<td><a href="/CRM_war_exploded/status/statuses">Available Statuses</a></td>

<td><a href="/CRM_war_exploded/status/addStatus">Add a new status</a></td>

<td><a href="/CRM_war_exploded/status/editStatus">Edit Statuses<p><span class="glyphicon glyphicon-edit"></span></p></a></td>
    </tr>
    <tr>
<td><b>Priorities</b></td>

<td><a href="/CRM_war_exploded/priority/priorities">Available Priorities</a></td>

<td><a href="/CRM_war_exploded/priority/addPriority">Add a new priority</a></td>

<td><a href="/CRM_war_exploded/priority/editPriority">Edit Priorities<p><span class="glyphicon glyphicon-edit"></span></p></a></td>
    </tr>

</table>
</div>






<p><span class="glyphicon glyphicon-list"></span></p>








</body>
</html>

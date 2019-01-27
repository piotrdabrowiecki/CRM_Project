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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/CRM_war_exploded/css/style.css">
</head>
<body class="admin">


<h2>Admin Page</h2>



<div class="container">
<table border="4"  bgcolor="#C3F1FD" class="table">

    <tr>
<td><b>Projects</b></td>

<td><a href="/CRM_war_exploded/project/projects">Projects List &nbsp<p><span class="glyphicon glyphicon-list-alt"></span></p></a></td>

<td><a href="/CRM_war_exploded/project/addProject">Add New Project &nbsp<p><span class="glyphicon glyphicon-briefcase"></span></p></a></td>
    </tr>
    <tr>
<td><b>Users</b></td>

<td><a href="/CRM_war_exploded/user/users">User List &nbsp<p><span class="glyphicon glyphicon-list-alt"></span></p></a></td>

<td><a href="/CRM_war_exploded/user/addUser">Add New User &nbsp<p><span class="glyphicon glyphicon-user"></span></p></a></td>
    </tr>
    <tr>
<td><b>Tasks</b></td>

<td><a href="/CRM_war_exploded/task/tasks">Task List &nbsp<p><span class="glyphicon glyphicon-list-alt"></span></p></a></td>

<td><a href="/CRM_war_exploded/task/addTask">Add New Task &nbsp<p><span class="glyphicon glyphicon-tasks"></span></p></a></td>
    </tr>
    <tr>
<td><b>Statuses</b></td>

<td><a href="/CRM_war_exploded/status/statuses">Available Statuses &nbsp<p><span class="glyphicon glyphicon-list"></span></p></a></td>

<td><a href="/CRM_war_exploded/status/addStatus">Add a new status &nbsp<p><span class="glyphicon glyphicon-info-sign"></span></p></a></td>

<td><a href="/CRM_war_exploded/status/editStatus">Edit Statuses &nbsp<p><span class="glyphicon glyphicon-edit"></span></p></a></td>
    </tr>
    <tr>
<td><b>Priorities</b></td>

<td><a href="/CRM_war_exploded/priority/priorities">Available Priorities &nbsp<p><span class="glyphicon glyphicon-list"></span></p></a></td>

<td><a href="/CRM_war_exploded/priority/addPriority">Add a new priority &nbsp<p><span class="glyphicon glyphicon-warning-sign"></span></p></a></td>

<td><a href="/CRM_war_exploded/priority/editPriority">Edit Priorities &nbsp<p><span class="glyphicon glyphicon-edit"></span></p></a></td>
    </tr>

</table>
</div>


<span class="a">
    <a class="link" href="/CRM_war_exploded/user/logout">Logout</a>
</span>























</body>
</html>

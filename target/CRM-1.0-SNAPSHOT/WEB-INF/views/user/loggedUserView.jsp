<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 23.01.19
  Time: 18:48
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>



<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>



<%
    Gson gsonObj = new Gson();
    Map<Object,Object> map = null;
    List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();

    map = new HashMap<Object,Object>(); map.put("label", "Electrical"); map.put("y", 35); list.add(map);
    map = new HashMap<Object,Object>(); map.put("label", "Transport"); map.put("y", 20); list.add(map);
    map = new HashMap<Object,Object>(); map.put("label", "Cosumer Durables"); map.put("y", 18); list.add(map);
    map = new HashMap<Object,Object>(); map.put("label", "Packaging"); map.put("y", 15); list.add(map);
    map = new HashMap<Object,Object>(); map.put("label", "Construction"); map.put("y", 5); list.add(map);
    map = new HashMap<Object,Object>(); map.put("label", "Machinery"); map.put("y", 7); list.add(map);
    map = new HashMap<Object,Object>(); map.put("label", "Others"); map.put("y", 7); list.add(map);

    String dataPoints = gsonObj.toJson(list);
%>







<!DOCTYPE HTML>
<html>
<head>
    <title>Welcome ${user.name} ${user.surname}</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/CRM_war_exploded/css/style.css">



</head>






<body  class="user">


<ul class="ul3">


    <li class="li3"><a href="/CRM_war_exploded/user/editUser?id=${user.id}">edit Your Profile</a></li>



    <li class="li3"><a href="/CRM_war_exploded/user/deleteUser?id=${user.id}">delete Your Account</a></li>



    <li class="li3"><a href="/CRM_war_exploded/user/userProjects?id=${user.id}">view Your Projects</a></li>




    <li class="li3"><a href="/CRM_war_exploded/user/logout">Logout</a></li>



</ul>










<script>


  function date() {

      <c:if test="${yourModel.dateValid}">

          alert("Your projects created on this date are:");
          <c:forEach items="${user.projects}" var="project">

              alert("${project.name}");

          </c:forEach>

      </c:if>


  }

</script>






















</body>
</html>

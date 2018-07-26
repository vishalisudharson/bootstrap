<%@page import="com.ibm.model.Department"%>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="bootstrap/jquery/dist/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dept</title>
</head>
<body>
<%@ include file="Header.jsp" %>
<h1>working</h1>
<div class="container">
  <h2>Basic Table</h2>
  <p>The .table class adds basic styling (light padding and only horizontal dividers) to a table:</p>            
  <table class="table">
    <thead>
      <tr>
        <th>dept id</th>
        <th>dept name</th>
        
      </tr>
    </thead>
    <tbody>
    <%List<Department> depts = (List<Department>)request.getAttribute("depts");
 for(Department d:depts){
 %> 
      <tr>
        <td><%=d.getDeptId() %></td>
        <td><%=d.getDeptName() %></td>
      </tr>
      <%}
 %>
    </tbody>
  </table>
</div>
</body>
</html>
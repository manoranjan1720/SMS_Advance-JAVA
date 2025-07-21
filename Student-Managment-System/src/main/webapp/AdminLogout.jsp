<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
session.removeAttribute("abean");
session.removeAttribute("alist");
session.invalidate();
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout</title>
</head>
<body>
<p style="color: red; font-weight: bold;">Admin Logged Out Successfully....</p>
<br>
<%@include file="home.html" %>
</body>
</html>

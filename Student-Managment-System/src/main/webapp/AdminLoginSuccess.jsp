<%@page import="Test.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        flex-direction: column;
    }
    .dashboard {
        background: white;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        width: 350px;
        text-align: center;
    }
    h2 {
        color: #333;
    }
    .nav-links {
        display: flex;
        flex-direction: column;
        gap: 10px;
        margin-top: 20px;
    }
    .nav-links a {
        text-decoration: none;
        color: white;
        background: #007bff;
        padding: 10px;
        border-radius: 5px;
        transition: 0.3s;
    }
    .nav-links a:hover {
        background: #0056b3;
    }
    .logout {
        background: #dc3545 !important;
    }
    .logout:hover {
        background: #b02a37 !important;
    }
</style>
</head>
<body>
    <div class="dashboard">
        <%
        AdminBean ab = (AdminBean) session.getAttribute("abean"); 
        if (ab != null) {
            out.println("<h2>Welcome Admin: " + ab.getfName() + "</h2>");
        } else {
            response.sendRedirect("AdminLogin.html");
        }
        %>
        <div class="nav-links">
            <a href="Student.html">Add Student</a>
            <a href="view">View All Students</a>
            <a href="logout" class="logout">Logout</a>
        </div>
    </div>
</body>
</html>

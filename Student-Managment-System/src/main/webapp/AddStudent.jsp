<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="Test.AdminBean" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            display: inline-block;
            animation: fadeIn 1s ease-in-out;
        }
        .links a {
            display: inline-block;
            margin: 10px;
            padding: 10px 20px;
            text-decoration: none;
            color: white;
            background: #007BFF;
            border-radius: 5px;
            transition: transform 0.3s ease, background 0.3s ease;
        }
        .links a:hover {
            background: #0056b3;
            transform: scale(1.1);
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <div class="container">
        <% AdminBean ab = (AdminBean) session.getAttribute("abean"); %>
        <h2>Welcome, Admin: <%= ab != null ? ab.getfName() : "Guest" %></h2>
        <% String msg = (String) request.getAttribute("msg"); %>
        <p><%= msg != null ? msg : "" %></p>
        <div class="links">
            <a href="student.html">Add Student</a>
            <a href="view">View All Students</a>
            <a href="logout">Logout</a>
        </div>
    </div>
</body>
</html>

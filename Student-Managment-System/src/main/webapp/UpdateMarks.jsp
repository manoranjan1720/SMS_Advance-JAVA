<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="Test.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 20px;
        text-align: center;
    }
    .container {
        background: white;
        max-width: 400px;
        margin: auto;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h2 {
        color: #333;
    }
    p {
        font-size: 16px;
        color: #555;
    }
    a {
        display: inline-block;
        margin: 10px;
        padding: 10px 15px;
        text-decoration: none;
        color: white;
        background: #007bff;
        border-radius: 4px;
    }
    a:hover {
        background: #0056b3;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>Admin Dashboard</h2>
        <%
            AdminBean ab = (AdminBean)session.getAttribute("abean");
            String msg = (String)request.getAttribute("msg");
            out.println("<p>Page belongs to Admin: <strong>" + ab.getfName() + "</strong></p>");
            if (msg != null && !msg.isEmpty()) {
                out.println("<p style='color: green;'><strong>" + msg + "</strong></p>");
            }
        %>
        <a href="Student.html">Add Student</a>
        <a href="view">View All Students</a>
        <a href="logout">Logout</a>
    </div>
</body>
</html>

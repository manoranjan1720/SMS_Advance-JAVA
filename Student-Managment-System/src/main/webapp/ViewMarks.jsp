<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="Test.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Details</title>
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
        text-align: left;
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
        <h2>Student Details</h2>
        <%
            AdminBean ab = (AdminBean)session.getAttribute("abean");
            StudentBean sb = (StudentBean)request.getAttribute("sbean");
            out.println("<p><strong>Page belongs to Admin:</strong> " + ab.getfName() + "</p>");
            out.println("<p><strong>Roll No:</strong> " + sb.getRollNo() + "</p>");
            out.println("<p><strong>Core Java:</strong> " + sb.getMk().getCoreJava() + "</p>");
            out.println("<p><strong>Advanced Java:</strong> " + sb.getMk().getAdvJava() + "</p>");
            out.println("<p><strong>UI:</strong> " + sb.getMk().getUi() + "</p>");
            out.println("<p><strong>Database:</strong> " + sb.getMk().getDb() + "</p>");
            out.println("<p><strong>Tools:</strong> " + sb.getMk().getTools() + "</p>");
        %>
        <a href="edit?rollno=<%= sb.getRollNo()%>">Edit Marks</a>
        <a href="student.html">Add Student</a>
        <a href="view">View All Students</a>
        <a href="logout">Logout</a>
    </div>
</body>
</html>

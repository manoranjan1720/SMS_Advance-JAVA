<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="Test.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Student Marks</title>
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
    label {
        font-weight: bold;
    }
    input[type="text"] {
        width: 100%;
        padding: 8px;
        margin: 5px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    input[type="submit"] {
        background: #28a745;
        color: white;
        padding: 10px 15px;
        border: none;
        cursor: pointer;
        border-radius: 4px;
        font-size: 16px;
    }
    input[type="submit"]:hover {
        background: #218838;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>Update Student Marks</h2>
        <%
            AdminBean ab = (AdminBean)session.getAttribute("abean");
            StudentBean sb = (StudentBean)request.getAttribute("sbean");
            out.println("<p>Page belongs to Admin: <strong>" + ab.getfName() + "</strong></p>");
        %>
        <form action="update" method="post">
            <input type="hidden" name="rollno" value="<%= sb.getRollNo() %>">
            <label>Core Java:</label>
            <input type="text" name="corejava" value="<%= sb.getMk().getCoreJava() %>"><br>
            <label>Advanced Java:</label>
            <input type="text" name="advjava" value="<%= sb.getMk().getAdvJava() %>"><br>
            <label>UI:</label>
            <input type="text" name="ui" value="<%= sb.getMk().getUi() %>"><br>
            <label>Database:</label>
            <input type="text" name="db" value="<%= sb.getMk().getDb() %>"><br>
            <label>Tools:</label>
            <input type="text" name="tools" value="<%= sb.getMk().getTools() %>"><br>
            <input type="submit" value="Update Marks">
        </form>
    </div>
</body>
</html>

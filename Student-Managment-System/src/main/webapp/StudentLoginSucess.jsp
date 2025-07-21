<%@page import="java.util.Enumeration , Test.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Report Card</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #4facfe, #00f2fe);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .container {
            width: 90%;
            max-width: 650px;
            background: #fff;
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
        }
        h2 {
            color: #333;
            margin-bottom: 15px;
        }
        h4 {
            color: #007bff;
            margin-top: 20px;
            border-bottom: 2px solid #007bff;
            display: inline-block;
            padding-bottom: 5px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }
        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }
        th {
            background: #007bff;
            color: white;
            font-weight: bold;
        }
        td {
            background: #f9f9f9;
        }
        @media (max-width: 600px) {
            .container {
                width: 95%;
                padding: 15px;
            }
            th, td {
                font-size: 14px;
                padding: 10px;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Session Attributes</h2>

<%
	Object sbeanObj = session.getAttribute("sbean");
	StudentBean sb = (StudentBean) sbeanObj;
%>

        <h2>Student Report Card</h2>
        <table>
            <tr>
                <th>Roll Number</th>
                <td><%=sb.getRollNo() %></td>
            </tr>
            <tr>
                <th>Name</th>
                <td><%=sb.getName() %></td>
            </tr>
        </table>
        
        <h4>Subject Marks</h4>
        <table>
            <thead>
                <tr>
                    <th>Subject</th>
                    <th>Marks</th>
                </tr>
            </thead>
            <tbody>
                <tr><td>Core Java</td><td><%=sb.getMk().getCoreJava() %></td></tr>
                <tr><td>Advanced Java</td><td><%=sb.getMk().getAdvJava() %></td></tr>
                <tr><td>UI</td><td><%=sb.getMk().getUi() %></td></tr>
                <tr><td>Database (DB)</td><td><%=sb.getMk().getDb()%></td></tr>
                <tr><td>Tools</td><td><%=sb.getMk().getTools() %></td></tr>
            </tbody>
        </table>
        
        <h4>Summary</h4>
        <table>
            <tr>
                <th>Total Marks</th>
                <td><%=sb.getTotMarks()%></td>
            </tr>
            <tr>
                <th>Percentage</th>
                <td><%=sb.getPer() %></td>
            </tr>
            <tr>
                <th>Result</th>
                <td><%=sb.getResult() %></td>
            </tr>
        </table>
        <br>
    <a href="home.html" style="display: inline-block; margin-top: 15px; padding: 10px 20px; background: #007bff; color: white; text-decoration: none; border-radius: 5px;">Back to Home</a>
        
    </div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="Test.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student List</title>
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
        max-width: 600px;
        margin: auto;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h2 {
        color: #333;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    th, td {
        padding: 10px;
        border: 1px solid #ddd;
        text-align: center;
    }
    th {
        background: #007bff;
        color: white;
    }
    a {
        color: #007bff;
        text-decoration: none;
    }
    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>Student List</h2>
        <%
            AdminBean ab = (AdminBean)session.getAttribute("abean");
            ArrayList<StudentBean> al = (ArrayList<StudentBean>)session.getAttribute("alist");
            out.println("<p>Page belongs to Admin: <strong>" + ab.getfName() + "</strong></p>");
            if(al.size() == 0) {
                out.println("<p>No Students Available...</p>");
            } else {
        %>
        <table>
            <tr>
                <th>Roll No</th>
                <th>Name</th>
                <th>Course</th>
                <th>Total Marks</th>
                <th>Percentage</th>
                <th>Result</th>
                <th>Action</th>
            </tr>
            <%
                Iterator<StudentBean> it = al.iterator();
                while(it.hasNext()) {
                    StudentBean sb = (StudentBean)it.next();
            %>
            <tr>
                <td><%= sb.getRollNo() %></td>
                <td><%= sb.getName() %></td>
                <td><%= sb.getCourse() %></td>
                <td><%= sb.getTotMarks() %></td>
                <td><%= sb.getPer() %></td>
                <td><%= sb.getResult() %></td>
                <td><a href='viewm?rollno=<%= sb.getRollNo() %>'>View Marks</a></td>
            </tr>
            <%
                }
            %>
        </table>
        <% } %>
    </div>
</body>
</html>

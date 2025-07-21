<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Message Page</title>
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
    .message-container {
         
        padding: 30px;
        border-radius: 10px;
        text-align: center;
        width: 400px;
    }
    .message {
        font-size: 18px;
         color: red;
        margin-bottom: 20px;
    }
</style>
</head>
<body>
    <div class="message-container">
        <%
        String msg = (String) request.getAttribute("msg");
        if (msg != null && !msg.isEmpty()) {
            out.println("<p class='message'>" + msg + "</p>");
        } else {
            out.println("<p class='message'>No new messages</p>");
        }
        %>
    </div>
    <%@include file="home.html" %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.model.User" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Local Bakery - User Summary</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css" />
</head>
<body>
<div class="container">
    <h2 class="logo">Local Bakery</h2>

    <h2>User Summary</h2>
    <p><strong>Username:</strong> ${user.username}</p>
    <p><strong>Email:</strong> ${user.email}</p>
    <!-- Add more fields if needed -->

    <p><a href="login-summary.jsp">Back to Dashboard</a></p>
    <p><a href="logout.jsp">Logout</a></p>
</div>
</body>
</html>

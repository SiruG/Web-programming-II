<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Invalidate session on logout
    session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Local Bakery - Logged Out</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css" />
</head>
<body>
<div class="container">
    <h2 class="logo">Local Bakery</h2>

    <h2>You have been logged out</h2>
    <p>Come back soon!</p>

    <p><a href="login.jsp">Login Again</a></p>
    <p><a href="registration.jsp">Register</a></p>
</div>
</body>
</html>

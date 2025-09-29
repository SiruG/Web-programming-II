<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Local Bakery - Dashboard</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css" />
</head>
<body>
<div class="container">
    <h2 class="logo">Local Bakery</h2>

    <h2>Welcome, ${user.username}!</h2>
    <p>You are logged in successfully.</p>
    <p>Your email: ${user.email}</p>

    <p><a href="logout.jsp">Logout</a></p>
    <p><a href="summary.jsp">View Summary</a></p>
</div>
</body>
</html>

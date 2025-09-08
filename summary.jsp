<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Summary</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css" />
</head>
<body>
<div class="container">
    <h2>User Summary</h2>
    <p>This page can display general information about a logged-in user.</p>
    <p>If you have a session or model attribute for the user, you can display it here.</p>

    <a href="${pageContext.request.contextPath}/logout">Logout</a>
</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Local Bakery - Login</title>

    <!-- CSS styles -->
    <link rel="stylesheet" href="<c:url value='/resources/css/styles.css' />" />
    <link rel="stylesheet" href="<c:url value='/resources/css/login.css' />" />
</head>
<body>
<div class="container">
    <h2 class="logo">Local Bakery</h2>

    <c:if test="${not empty message}">
        <div class="message">${message}</div>
    </c:if>

    <form action="<c:url value='/login' />" method="post">
        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="Enter username" required />
        </div>

        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Enter password" required />
        </div>

        <button type="submit" class="btn btn-primary">Login</button>

        <p>Don't have an account?
            <a href="<c:url value='/register' />">Register here</a>
        </p>
    </form>
</div>
</body>
</html>

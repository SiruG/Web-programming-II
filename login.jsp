<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Local Bakery Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css" />
</head>
<body>
<div class="container">
    <h2>Local Bakery Login</h2>
    <div class="message">${errorMessage}</div>
    <form:form action="${pageContext.request.contextPath}/login" method="post" modelAttribute="user">
        <div class="form-group">
            <label for="username">Username:</label>
            <form:input path="username" id="username" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <form:password path="password" id="password" class="form-control"/>
        </div>
        <button type="submit" class="btn btn-primary">Login</button>
    </form:form>
    <p>Don't have an account? <a href="${pageContext.request.contextPath}/registration">Register here</a></p>
</div>
</body>
</html>

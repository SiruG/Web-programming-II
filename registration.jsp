<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Local Bakery Registration</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css" />
</head>
<body>
<div class="container">
    <h2>Local Bakery Registration</h2>
    <div class="message">${errorMessage}</div>
    <form:form action="${pageContext.request.contextPath}/registration" method="post" modelAttribute="user">
        <div class="form-group">
            <label for="username">Username:</label>
            <form:input path="username" id="username" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <form:input path="email" id="email" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <form:password path="password" id="password" class="form-control"/>
        </div>
        <button type="submit" class="btn btn-primary">Register</button>
    </form:form>
    <p>Already have an account? <a href="${pageContext.request.contextPath}/login">Login here</a></p>
</div>
</body>
</html>

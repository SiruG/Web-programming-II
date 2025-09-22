<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login Successful</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css" />
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: var(--background);
            font-family: 'Open Sans', sans-serif;
        }
        .container {
            max-width: 400px;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h2 {
            font-family: 'Poppins', sans-serif;
            color: var(--secondary);
            margin-bottom: 25px;
            font-size: 1.8rem;
        }
        p {
            margin-bottom: 10px;
        }
        p a {
            color: var(--accent);
            text-decoration: none;
            font-weight: 600;
        }
        p a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Welcome, ${user.username}!</h2>
    <p>You have successfully logged in.</p>
    <p>Your email is: ${user.email}</p>
    <p><a href="${pageContext.request.contextPath}/logout">Logout</a></p>
</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="NavBar.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register User</title>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Barlow:wght@400;600&display=swap');

    body {
        font-family: 'Barlow', sans-serif;
        background-color: #EEF5FF;
        margin: 0;
        padding: 0;
        height: 100vh;
    }

    .register-container {
        background-color: #fff;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        width: 100%;
        text-align: center;
    }

    h1 {
        font-weight: 600;
        margin-bottom: 20px;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"] {
        width: calc(100% - 22px);
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    input[type="submit"] {
        background-color: #B4D4FF;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #176B87;
    }

    .message {
        color: red;
        margin-top: 10px;
    }
</style>
</head>

<body>
<div class="register-container">
    <h1>Register</h1>
    <form action="Register" method="post">
        <input type="text" name="username" pattern="[A-Za-z]*" title="Only letters are allowed" placeholder="Enter your Name" required>
        <input type="email" name="userEmail" placeholder="Enter your Email" required>
        <input type="password" name="userPassword" placeholder="Enter your Password" required>
        <input type="submit" value="Register">
    </form>
    <% 
        String message = (String) request.getAttribute("message"); 
        if (message != null) {
    %>
        <div class="message"><%= message %></div>
    <% } %>
</div>
</body>
</html>

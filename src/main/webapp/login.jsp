<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Barlow:wght@400;600&display=swap');

    body {
        font-family: "Barlow", sans-serif;
        background-color: #EEF5FF;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .login-container {
        background-color: #fff;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        width: 100%;
        text-align: center;
    }

    h2 {
        font-weight: 600;
        margin-bottom: 20px;
    }

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

    .error-message {
        color: red;
        margin-top: 10px;
    }
</style>
</head>

<body>
<div class="login-container">
    <h2>Login</h2>
    <form action="login" method="post">
        <input type="email" placeholder="Enter Your Email" name="userEmail" required>
        <input type="password" placeholder="Enter Your Password" name="userPassword" required>
        <input type="submit" value="Login">

        <!-- Display Error Message in Same Page-->
        <%
            String failure = (String) request.getAttribute("failure");
            if (failure != null) {
        %>
            <div class="error-message"><%=failure%></div>
        <% } %>
    </form>
</div>
</body>
</html>

<%@page import="com.jsp.hibernate.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User</title>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Barlow:wght@400;600&display=swap');

    body {
        font-family: 'Barlow', sans-serif;
        background-color: #EEF5FF;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .update-container {
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
</style>
</head>
<body>

<div class="update-container">
    <h1>Update User</h1>

    <%
        User user = (User) session.getAttribute("user");
    %>

    <form action="updateUser" method="post">
        <input type="text" id="charOnly"  pattern="[A-Za-z\s]+" oninput="this.value = this.value.replace(/[^A-Za-z\s]/g, '')" value="<%=user.getUsername()%>" name="userName" required>
        <input type="email" value="<%=user.getUserEmail()%>" name="userEmail" required>
        <input type="password" value="<%=user.getUserPassword()%>" name="userPassword" required>
        <input type="submit" value="Update">
    </form>
</div>

</body>
</html>

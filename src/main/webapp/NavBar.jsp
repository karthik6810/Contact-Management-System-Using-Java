<%@page import="com.jsp.hibernate.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register or Login Page</title>
<style>
    body {
        font-family: 'Barlow', sans-serif;
        background-color: #EEF5FF;
        margin: 0;
        padding: 0;
    }
    nav {
        display: flex;
        justify-content: space-between;
        align-items: center;
        background-color: #B4D4FF;
        padding: 10px 20px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    nav h3 {
        font-family: 'Barlow', sans-serif;
        margin: 0;
        font-size: 24px;
        color: #333;
    }
    nav div {
        display: flex;
        gap: 20px;
    }
    nav a {
        text-decoration: none;
        font-size: 18px;
        color: #333;
        padding: 5px 10px;
        border-radius: 3px;
        transition: background-color 0.3s ease;
    }
    nav a:hover {
        background-color: #176B87;
        color: #fff;
    }
</style>
</head>
<body>

<%
    User user2 = (User) session.getAttribute("user");
%>

<nav>
    <h3>Contact Management System</h3>
    <div>
        <% if (user2 == null) { %>
            <a href="Register.jsp">Register</a> 
            <a href="login.jsp">Login</a>
        <% } else { %>
            <a href="logout">LogOut</a>
        <% } %>
    </div>
</nav>

</body>
</html>

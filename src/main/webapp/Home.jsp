<%@page import="java.util.List"%>
<%@page import="com.jsp.hibernate.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="NavBar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<style>
    body {
        font-family: "Barlow", sans-serif;
        background-color: #EEF5FF;
        margin: 0;
        padding: 0;
    }
    form {
        max-width: 600px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }
    h2 {
        margin-top: 0;
    }
    a {
        display: block;
        margin-bottom: 10px;
        padding: 10px 20px;
        background-color: #B4D4FF;
        color: #fff;
        text-decoration: none;
        border-radius: 3px;
    }
    a:hover {
        background-color: #176B87;
    }
</style>
</head>
<body>

<%
    User user = (User) session.getAttribute("user");

    String addContact = user != null ? "AddContact.jsp" : "login.jsp";
    String manageContact = user != null ? "manageContact" : "login.jsp";
    String manageProfile = user != null ? "ManageProfile.jsp" : "login.jsp";
%>

<form>
    <h2>Welcome Back</h2>
    <a href="<%= addContact %>">Add Contact</a>
    <a href="<%= manageContact %>">Manage Contact</a>
    <a href="<%= manageProfile %>">Manage Profile</a>
</form>

</body>
</html>

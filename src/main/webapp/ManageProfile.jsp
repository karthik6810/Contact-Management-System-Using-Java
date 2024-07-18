<%@page import="com.jsp.hibernate.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Information</title>
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

    .user-info-container {
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

    input[type="text"] {
        width: calc(100% - 22px);
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        background-color: #e9ecef;
        color: #495057;
        pointer-events: none; /* Makes the input field non-editable */
    }

    .button-container {
        margin-top: 20px;
    }

    .button-container a {
        display: inline-block;
        margin: 5px;
        text-decoration: none;
    }

    .button-container input[type="submit"] {
        background-color: #B4D4FF;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .button-container input[type="submit"]:hover {
        background-color: #0056b3;
    }

    .button-container .delete-button {
        background-color: #dc3545;
    }

    .button-container .delete-button:hover {
        background-color: #176B87;
    }
</style>
</head>
<body>

<div class="user-info-container">
    <h1>User Information</h1>

    <% User user = (User) session.getAttribute("user"); %>
    
    <input type="text" value="<%=user.getUsername()%>">
    <input type="text" value="<%=user.getUserEmail()%>" >
    <input type="text" value="<%=user.getUserPassword()%>" >
    
    <div class="button-container">
        <a href="UpdateUser.jsp"><input value="Edit" type="submit"></a>
        <a href="DeleteUser"><input value="Delete" type="submit" class="delete-button"></a>
    </div>
</div>

</body>
</html>

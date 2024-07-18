<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
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
    form {
        background: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
    }
    input[type="text"],
    input[type="number"],
    input[type="submit"] {
        width: calc(100% - 20px);
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    input[type="submit"] {
        width: calc(100% - 20px);
        background-color: #B4D4FF;
        color: white;
        border: none;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #176B87;
    }
</style>
</head>

<body>

<form action="save" method="post">
    <input type="text" pattern="[A-Za-z]*" title="Only letters are allowed"  placeholder="Enter Contact Name" name="contactName" required>
    <input type="number" placeholder="Enter Contact Number" name="contactNumber" required>
    <input type="submit" value="Save">
</form>

</body>
</html>

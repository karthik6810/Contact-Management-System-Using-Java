<%@page import="com.jsp.hibernate.entity.Contact"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Contact</title>
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
    input[type="number"],
    input[type="text"],
    input[type="submit"] {
        width: calc(100% - 20px);
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    input[type="submit"] {
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
	<%
	Contact contact = (Contact) request.getAttribute("contact");
	%>
	<form action="updatedContact" method="post">
		<input type="number" value="<%=contact.getContactId()%>" readonly="readonly" name="contactId"> 
		<input type="text" value="<%=contact.getContactName()%>" id="charOnly" pattern="[A-Za-z\s]+" oninput="this.value = this.value.replace(/[^A-Za-z\s]/g, '')"  name="contactName" required> 
		<input type="number" value="<%=contact.getContactNumber()%>" pattern="\d{10}" maxlength="10" title="Please enter exactly 10 digits"  name="contactNumber"> 
		<input type="submit" value="Update">
	</form>
</body>
</html>

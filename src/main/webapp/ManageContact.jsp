<%@page import="com.jsp.hibernate.entity.Contact"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage Contacts</title>
<style>
    body {
         font-family: 'Barlow', sans-serif;
        background-color: #EEF5FF;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        height: 100vh;
    }
    form {
        background: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 80%;
        max-width: 800px;
        margin: 20px 0;
    }
    h2 {
        text-align: center;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    table th, table td {
        padding: 10px;
        border: 1px solid #ccc;
        text-align: left;
    }
    table th {
        background-color: #f2f2f2;
    }
    a {
        padding: 5px 10px;
        border-radius: 3px;
        text-decoration: none;
        color: white;
    }
    .edit-link {
        background-color: #B4D4FF;
    }
    .edit-link:hover {
        background-color: #176B87;
    }
    .delete-link {
        background-color: #dc3545;
    }
    .delete-link:hover {
        background-color: #c82333;
    }
</style>
</head>
<body>
	<%
	List<Contact> contacts = (List<Contact>) request.getAttribute("contacts");
	%>

	<form>
		<h2>Manage Contact</h2>

		<table>
			<tr>
				<th>Contact Id</th>
				<th>Contact Name</th>
				<th>Contact Number</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			

			<%
			for (Contact contact : contacts) {
			%>
			<tr>
				<td><%=contact.getContactId()%></td>
				<td><%=contact.getContactName()%></td>
				<td><%=contact.getContactNumber()%></td>
				<td><a href="updateContact?contactId=<%=contact.getContactId()%>" class="edit-link">Edit</a></td>
				<td><a href="deleteContact?contactId=<%=contact.getContactId()%>" class="delete-link">Delete</a></td>
			</tr>
			<%
			}
			%>
		</table>

	</form>

</body>
</html>

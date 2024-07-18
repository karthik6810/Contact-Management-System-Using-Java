package com.jsp.hibernate.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.hibernate.config.ContactDaoSingleton;
import com.jsp.hibernate.entity.Contact;
import com.jsp.hibernate.entity.User;

@WebServlet("/manageContact")
public class ManageContact extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = (User) req.getSession().getAttribute("user");
		
		List<Contact> contacts = ContactDaoSingleton.getDao().findContactsByUser(user);

		if (contacts != null) {
			req.setAttribute("contacts", contacts);
			req.getRequestDispatcher("ManageContact.jsp").forward(req, resp);
		} else {
			resp.sendRedirect("Home.jsp");
		}

	}

}

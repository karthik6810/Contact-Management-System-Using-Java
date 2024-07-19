package com.jsp.hibernate.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.hibernate.config.ContactDaoSingleton;
import com.jsp.hibernate.entity.Contact;
import com.jsp.hibernate.entity.User;

@WebServlet("/save")
public class SaveContact extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String contactName = req.getParameter("contactName");
		long contactNumber = Long.parseLong(req.getParameter("contactNumber"));

		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("user");
		
		
		Contact contact = new Contact();
		contact.setContactName(contactName);
		contact.setContactNumber(contactNumber);
		contact.setUser(user);
		boolean result = ContactDaoSingleton.getDao().saveContact(contact);

		if (result) {
			resp.sendRedirect("Home.jsp");
		} 
		else {
			req.setAttribute("message", "Invalid Contact");
			req.getRequestDispatcher("AddContact.jsp").forward(req, resp);
		}

	}

}

package com.jsp.hibernate.service;

import java.io.IOException;

import javax.persistence.criteria.CriteriaBuilder.In;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.hibernate.config.ContactDaoSingleton;
import com.jsp.hibernate.entity.Contact;

@WebServlet("/updatedContact")
public class UpdatedContact extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int contactId = Integer.parseInt(req.getParameter("contactId"));
		String contactName = req.getParameter("contactName");
		int contactNumber = Integer.parseInt(req.getParameter("contactNumber"));

		Contact contact = ContactDaoSingleton.getDao().findContact(contactId);
		
		contact.setContactName(contactName);
		contact.setContactNumber(contactNumber);

		ContactDaoSingleton.getDao().updateContact(contact);

		resp.sendRedirect("manageContact");

	}
}

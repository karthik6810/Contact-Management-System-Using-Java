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

@WebServlet("/deleteContact")
public class DeleteContact extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int contactId = Integer.parseInt(req.getParameter("contactId"));
		
		Contact contact = ContactDaoSingleton.getDao().findContact(contactId);
		
		ContactDaoSingleton.getDao().deleteContact(contact);
		
		resp.sendRedirect("manageContact");
		
	}

}

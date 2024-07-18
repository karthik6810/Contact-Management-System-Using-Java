package com.jsp.hibernate.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.hibernate.config.UserDaoSingleton;
import com.jsp.hibernate.entity.User;

@WebServlet("/login")
public class LoginCredentialCheck extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// Retrieve userEmail and userPassword from request parameters
		String userEmail = req.getParameter("userEmail");
		String userPassword = req.getParameter("userPassword");

		User user = UserDaoSingleton.getDao().findUserByEmailAndPass(userEmail, userPassword);

		// Check if the query returned any results
		if (user != null) {
			HttpSession session = req.getSession(true);
			session.setAttribute("user", user);
			resp.sendRedirect("Home.jsp");
		} 
		else {
			req.setAttribute("failure", "Invalid User Name or Password");
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		}
	}
}

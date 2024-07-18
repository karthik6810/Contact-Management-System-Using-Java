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

@WebServlet("/updateUser")
public class UpdateUser extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userName = req.getParameter("userName");
		String userEmail = req.getParameter("userEmail");
		String userPassword = req.getParameter("userPassword");

		User user = (User)req.getSession().getAttribute("user");
		user.setUsername(userName);
		user.setUserEmail(userEmail);
		user.setUserPassword(userPassword);
		
		req.getSession().setAttribute("user", user);
		UserDaoSingleton.getDao().updateUser(user);
		resp.sendRedirect("Home.jsp");

	}
}

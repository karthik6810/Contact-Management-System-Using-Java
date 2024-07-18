package com.jsp.hibernate.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.hibernate.config.UserDaoSingleton;
import com.jsp.hibernate.entity.User;

@WebServlet("/Register")
public class RegisterUser extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String username = req.getParameter("username");
		String userEmail = req.getParameter("userEmail");
		String userPassword = req.getParameter("userPassword");

		// User Object
		User user = new User();
		user.setUsername(username);
		user.setUserEmail(userEmail);
		user.setUserPassword(userPassword);

		// User Dao Object
		boolean result =  UserDaoSingleton.getDao().saveUser(user);
		
		//response to client
		if(result) {
			resp.sendRedirect("login.jsp");
		}
		else {
			req.setAttribute("message", "Place Register Correctly");
			req.getRequestDispatcher("Register.jsp").forward(req, resp);
		}
	}
}

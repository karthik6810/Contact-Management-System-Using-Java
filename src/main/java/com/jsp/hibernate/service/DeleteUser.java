package com.jsp.hibernate.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.hibernate.config.UserDaoSingleton;
import com.jsp.hibernate.entity.User;

@WebServlet("/DeleteUser")
public class DeleteUser extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = (User) req.getSession().getAttribute("user");
//		UserDaoSingleton.getDao().findUser(user.getUserId());
		 
		UserDaoSingleton.getDao().deleteUser(user);

	}

}

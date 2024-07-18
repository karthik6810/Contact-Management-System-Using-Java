package com.jsp.hibernate.config;

import com.jsp.hibernate.dao.UserDao;

public class UserDaoSingleton {

	private static UserDao dao;

	private UserDaoSingleton() {

	}

	public static synchronized UserDao getDao() {
		if (dao == null)
			dao = new UserDao();
		return dao;
	}

}

package com.jsp.hibernate.config;

import com.jsp.hibernate.dao.ContactDao;

public class ContactDaoSingleton {

	private static ContactDao contactDao;

	private ContactDaoSingleton() {

	}

	public static synchronized ContactDao getDao() {
		if (contactDao == null)
			contactDao = new ContactDao();
		return contactDao;

	}
}

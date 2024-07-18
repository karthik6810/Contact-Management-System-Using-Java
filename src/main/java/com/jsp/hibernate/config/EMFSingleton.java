package com.jsp.hibernate.config;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class EMFSingleton {

	private static EntityManagerFactory factory;

	private EMFSingleton() {

	}

	public static synchronized EntityManagerFactory getEmf() {
		if (factory == null)
			factory = Persistence.createEntityManagerFactory("sql_config");

		return factory;
	}

}

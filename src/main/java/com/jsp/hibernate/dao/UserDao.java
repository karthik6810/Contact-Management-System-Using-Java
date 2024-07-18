package com.jsp.hibernate.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import com.jsp.hibernate.config.EMFSingleton;
import com.jsp.hibernate.entity.Contact;
import com.jsp.hibernate.entity.User;

public class UserDao {

	public boolean saveUser(User user) {
		EntityManager manager = EMFSingleton.getEmf().createEntityManager();
		EntityTransaction transaction = manager.getTransaction();

		try {
			transaction.begin();
			manager.persist(user);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			manager.close();
		}

	}

	public User findUser(int userId) {
		EntityManager manager = EMFSingleton.getEmf().createEntityManager();
		User user = manager.find(User.class, userId);
		manager.close();
		return user;
	}

	public boolean updateUser(User user) {
		EntityManager manager = EMFSingleton.getEmf().createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		try {
			transaction.begin();
			manager.merge(user);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			manager.close();
		}

	}

	public boolean deleteUser(User user) {
		EntityManager manager = EMFSingleton.getEmf().createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		try {
			transaction.begin();
			manager.remove(manager.merge(user));
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			manager.close();
		}

	}

	public User findUserByEmailAndPass(String userEmail, String userPassword) {
		EntityManager manager = EMFSingleton.getEmf().createEntityManager();
		try {
			TypedQuery<User> query = manager.createQuery("FROM User WHERE userEmail = :email AND userPassword = :password",User.class);
			query.setParameter("email", userEmail);
			query.setParameter("password", userPassword);
			User user = query.getSingleResult();
			return user;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			manager.close();
		}
	}

}

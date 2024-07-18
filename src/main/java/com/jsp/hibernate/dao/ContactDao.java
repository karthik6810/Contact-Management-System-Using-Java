package com.jsp.hibernate.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import com.jsp.hibernate.config.EMFSingleton;
import com.jsp.hibernate.entity.Contact;
import com.jsp.hibernate.entity.User;

public class ContactDao {

	public boolean saveContact(Contact contact) {
		EntityManager manager = EMFSingleton.getEmf().createEntityManager();
		EntityTransaction transaction = manager.getTransaction();

		try {
			transaction.begin();
			manager.persist(contact);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			manager.close();
		}

	}

	public Contact findContact(int contactId) {
		EntityManager manager = EMFSingleton.getEmf().createEntityManager();
		Contact contact = manager.find(Contact.class, contactId);
		manager.close();
		return contact;
	}

	public boolean updateContact(Contact contact) {
		EntityManager manager = EMFSingleton.getEmf().createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		try {
			manager.merge(contact);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			manager.close();
		}

	}

	public boolean deleteContact(Contact contact) {
		EntityManager manager = EMFSingleton.getEmf().createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();

		try {
			manager.remove(manager.merge(contact));
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			manager.close();
		}

	}

	public List<Contact> findContactsByUser(User user) {
		EntityManager manager = EMFSingleton.getEmf().createEntityManager();
		TypedQuery<Contact> query = manager.createQuery("FROM Contact WHERE user = :user", Contact.class);
		query.setParameter("user", user);
		List<Contact> contacts = query.getResultList();
		manager.close();
		return contacts;
	}

}

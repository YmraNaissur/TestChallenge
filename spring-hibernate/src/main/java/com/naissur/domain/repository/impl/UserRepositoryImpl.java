package com.naissur.domain.repository.impl;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.naissur.domain.User;
import com.naissur.domain.repository.UserRepository;

@Repository
public class UserRepositoryImpl implements UserRepository {
	
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void addUser(User u) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(u);
		System.out.println("User added successfully, user details = " + u);
	}

	@SuppressWarnings("unchecked")
	public List<User> listUsers() {
		Session session = this.sessionFactory.getCurrentSession();
		List<User> userList = session.createQuery("from User").list();
		for (User u: userList) {
			System.out.println("User list::" + u);
		}
		return userList;
	}

	public void updateUser(User u) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(u);
		System.out.println("User updated successfully, user details = " + u);
	}

	/**
	 * Returns user by ID
	 */
	public User getUserById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		User u = (User) session.load(User.class, new Integer(id));
		System.out.println("User loaded successfully, user details = " + u);
		return u;
	}

	public void removeUser(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		User u = (User) session.load(User.class, new Integer(id));
		if (u != null) {
			session.delete(u);
		}
		System.out.println("Users deleted successfully, user details = " + u);
	}

	/**
	 * Returns a list of users with specified name
	 */
	@SuppressWarnings("unchecked")
	public List<User> getUsersByName(String name) {
		Session session = this.sessionFactory.getCurrentSession();
		
		List<User> usersByName = new ArrayList<User>();
		List<User> userList = session.createQuery("from User").list();
		
		for (User u: userList) {
			if (u.getName().equals(name)) {
				usersByName.add(u);
				System.out.println("User list::" + u);
			}
		}
		
		return usersByName;
	}
}
package com.naissur.service;

import java.util.List;

import com.naissur.domain.User;

public interface UserService {
	public void addUser(User u);
	public void updateUser(User u);
	public List<User> listUsers();
	public User getUserById(int id);
	public List<User> getUsersByName(String name);
	public void removeUser(int id);
}

package com.naissur.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.naissur.domain.User;
import com.naissur.domain.repository.UserRepository;
import com.naissur.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	private UserRepository userRepository;
	
	public void setUserRepository(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	@Transactional
	public void addUser(User u) {
		this.userRepository.addUser(u);
	}

	@Transactional
	public void updateUser(User u) {
		this.userRepository.updateUser(u);
	}

	@Transactional
	public List<User> listUsers() {
		return this.userRepository.listUsers();
	}

	@Transactional
	public User getUserById(int id) {
		return this.userRepository.getUserById(id);
	}

	@Transactional
	public void removeUser(int id) {
		this.userRepository.removeUser(id);
	}

	@Transactional
	public List<User> getUsersByName(String name) {
		return this.userRepository.getUsersByName(name);
	}
}
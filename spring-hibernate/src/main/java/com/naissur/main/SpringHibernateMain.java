package com.naissur.main;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.naissur.domain.User;
import com.naissur.domain.repository.UserRepository;

public class SpringHibernateMain {

	public static void main(String[] args) {
		ClassPathXmlApplicationContext context =
				new ClassPathXmlApplicationContext("com/naissur/main/spring.xml");
		
		UserRepository userRepository = context.getBean(UserRepository.class);
		
		
		User user = userRepository.getUserById(6);
		user.setName("Dmitry");
		user.setAge(20);
		userRepository.updateUser(user);
		
		System.out.println(userRepository.getUserById(6));
		
		context.close();
	}
}
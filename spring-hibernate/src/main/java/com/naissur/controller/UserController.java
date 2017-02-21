package com.naissur.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.naissur.domain.User;
import com.naissur.service.UserService;

@Controller
public class UserController {
	
	private UserService userService;

	@Autowired(required=true)
	@Qualifier(value="userService")
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	@RequestMapping(value="/users", method = RequestMethod.GET)
	public String listUsers(@RequestParam(required=false) Integer page, Model model) {
		List<User> users = this.userService.listUsers();
		
		model.addAttribute("user", new User());
		model.addAttribute("findUser", new User());
		
		/* code responsible for pagination */
		PagedListHolder<User> pagedListHolder = new PagedListHolder<User>(users);
		// Number of records on a page
		pagedListHolder.setPageSize(9);
		model.addAttribute("maxPages", pagedListHolder.getPageCount());
		// if request parameter not correctly specified, consider it is 1
		if (page==null || page < 1 || page > pagedListHolder.getPageCount()) {
			pagedListHolder.setPage(0);
			model.addAttribute("listUsers", pagedListHolder.getPageList());
			page = 1;
		} else if (page <= pagedListHolder.getPageCount()) {
			pagedListHolder.setPage(page-1);
			model.addAttribute("listUsers", pagedListHolder.getPageList());
		}

		model.addAttribute("page", page);
		
		return "users";
	}
	
	// For add and update person both
	@RequestMapping(value="/user/add", method=RequestMethod.POST)
	public String addUser(@ModelAttribute("user") User u) {
		if (u.getId() == 0) {
			// new user, add it
			this.userService.addUser(u);
		} else {
			// existing user, call update
			this.userService.updateUser(u);
		}
		return "redirect:/users";
	}
	
	@RequestMapping("/remove/{id}")
	public String removeUser(@PathVariable("id") int id) {
		this.userService.removeUser(id);
		return "redirect:/users";
	}
	
	@RequestMapping("/edit/{id}")
	public String editUser(@PathVariable("id") int id, Model model) {
		model.addAttribute("user", this.userService.getUserById(id));
		model.addAttribute("users", this.userService.listUsers());
		model.addAttribute("findUser", new User());
		return "users";
	}
	
	@RequestMapping(value="/search")
	public String findUser(@RequestParam String name, Model model) {
		name = name.substring(name.lastIndexOf(",") + 1);
		System.out.println("Into search controller. Searching for " + name);
		model.addAttribute("name", name);
		model.addAttribute("user", new User());
		model.addAttribute("listUsers", this.userService.getUsersByName(name));
		return "usersByName";
	}
	
	@RequestMapping(value="/users", method=RequestMethod.POST)
	public String findUserPost(@ModelAttribute("findUser") User user, Model model) {
		System.out.println(user.getName());
		model.addAttribute("user", user);
		model.addAttribute("findUser", new User());
		return "users";
	}
}

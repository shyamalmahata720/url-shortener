package com.jsp.assignment.urlshortener.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.assignment.urlshortener.entity.User;
import com.jsp.assignment.urlshortener.exceptions.PasswordsDoNotMatchedException;
import com.jsp.assignment.urlshortener.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository userRepository;

	public ModelAndView saveUser(User user) throws PasswordsDoNotMatchedException {
		ModelAndView modelAndView = new ModelAndView("/user/login.jsp");
		if(!user.getPassword().equals(user.getConfirmPassword())) {
			throw new PasswordsDoNotMatchedException("Passwords Do Not Match");
		}
		try {
			userRepository.saveUser(user);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return modelAndView;
	}

	public ModelAndView loginUser(HttpSession httpSession, String email, String password) {
		ModelAndView modelAndView = new ModelAndView("/user/dashboard.jsp");
		User user = userRepository.findByEmail(email);
		if (user.getPassword().equals(password)) {
			httpSession.setAttribute("user", user);
		}

		return modelAndView;
	}
	
	public ModelAndView logoutUser(HttpSession httpSession) {
		ModelAndView modelAndView = new ModelAndView("/user/login.jsp");
		if(httpSession.getAttribute("user") != null) {
			httpSession.removeAttribute("user");
			
		}
		return modelAndView;
	}
	
	

}

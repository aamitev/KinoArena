package com.kinoarena.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kinoarena.exceptions.WebProfileException;
import com.kinoarena.model.dao.UserDAO;
import com.kinoarena.model.vo.User;

@Controller
public class LoginController {

	@Autowired
	private UserDAO user;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		return "login";
	}

	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String verifyLogin(HttpServletRequest request, HttpSession session, Model model) {
		String userEmail = request.getParameter("email").toString();
		String userPass = request.getParameter("password").toString();

		User loggedUser;
		 try {
			if(user.login(userEmail, userPass) != null) {
				 loggedUser = user.login(userEmail, userPass);
				 session.setAttribute("loggedUser", loggedUser);
				 return "userProfile";
			 }
		} catch (WebProfileException e) {
			System.out.println(e.getMessage());
		}
		 return "login";
		 
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(Model model) {
		return "register";
	}
	
	@RequestMapping(value = "/changePassword", method = RequestMethod.POST)
	public String verifyChangeOfPassword(HttpServletRequest request, HttpSession session, Model model) {
		
		String oldPass = request.getParameter("oldPassword").toString();
		String newPass = request.getParameter("newPass").toString();
		String reenterNewPass = request.getParameter("reenterNewPass").toString();

		
		System.out.println(oldPass);
		System.out.println(newPass);
		System.out.println(reenterNewPass);
		User user = (User) session.getAttribute("loggedUser");
		System.out.println(user.getEmail());
//		user.changePassword(, oldPass, newPass, reenterNewPass);
		
		return "changePassword";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, Model model) {
		request.getSession().invalidate();
		return "index";
	}
}

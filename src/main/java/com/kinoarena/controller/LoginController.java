package com.kinoarena.controller;

import java.time.LocalDate;

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
import com.kinoarena.utils.Utils;

@Controller
public class LoginController {

	@Autowired
	private UserDAO userDao;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model, HttpServletRequest request, HttpSession session) {
		session.setAttribute("referer", request.getHeader("Referer"));
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String verifyLogin(HttpServletRequest request, HttpSession session, Model model) {
		try {
			if (session.getAttribute("loggedUser") != null) {
				return "redirect:/index";
			}
			String userEmail = request.getParameter("email").toString();
			String userPass = request.getParameter("password").toString();
			String referer = "index";
			if (session.getAttribute("referer") != null) {
				String[] link = ((String) session.getAttribute("referer")).split("/");
				if (link[link.length - 2].equals("movies")) {
					referer = "/" + link[link.length - 2] +"/" +link[link.length - 1];
				}
			}
			User loggedUser = userDao.login(userEmail, userPass);
			System.out.println(referer);
			if (loggedUser != null) {
				session.setAttribute("loggedUser", loggedUser);
				return "redirect:" + referer;
			}
			return "login";

		} catch (WebProfileException e) {
			e.printStackTrace();
			System.out.println("Wrong password");
			return "login";
		}
	}

	@RequestMapping(value = "/forgottenPassword", method = RequestMethod.GET)
	public String forgottenPassword(Model model) {
		try {
			return "forgottenPassword";
		} catch (Exception e) {
			return "error";
		}
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(Model model) {

		return "register";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String verifyRegistration(HttpServletRequest request, HttpSession session, Model model) {
		try {
			String firstName = request.getParameter("firstName").toString();
			String secondName = request.getParameter("secondName").toString();
			String lastName = request.getParameter("lastName").toString();
			String email = request.getParameter("email").toString();
			String password = request.getParameter("password").toString();
			String rePassword = request.getParameter("rePassword").toString();

			boolean gender = Boolean.parseBoolean(request.getParameter("sex"));

			String birthdate = request.getParameter("dateOfBirth").toString();

			if (!Utils.checkString(firstName) && !Utils.checkString(secondName) && !Utils.checkString(lastName)
					&& !Utils.emailValidator(email) && !Utils.comparePasswords(password, rePassword)
					&& !Utils.dateValidator(birthdate)) {
				return "register";
			}

			LocalDate dateOfBirth = LocalDate.parse(birthdate);
			userDao.register(firstName, secondName, lastName, email, password, gender, dateOfBirth);

			return "index";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	@RequestMapping(value = "/changePassword", method = RequestMethod.POST)
	public String verifyChangeOfPassword(HttpServletRequest request, HttpSession session, Model model) {

		// String oldPass = request.getParameter("oldPassword").toString();
		String newPass = request.getParameter("newPass").toString();
		String reenterNewPass = request.getParameter("reenterNewPass").toString();

		User loggedUser = (User) session.getAttribute("loggedUser");

		if (!newPass.equals(reenterNewPass)) {
			System.out.println("Password mismatch");
			return "changePassword";
		}

		System.out.println(loggedUser.getEmail());

		userDao.changePassword(loggedUser, reenterNewPass);

		return "userProfile";
	}

	// @RequestMapping(value = "/submit", method = RequestMethod.POST)
	// public String updateInfo(HttpServletRequest request, HttpSession session,
	// Model model) {
	//
	//
	// return "userProfile";
	// }

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, Model model) {
		request.getSession().invalidate();
		return "index";
	}
}

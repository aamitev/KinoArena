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

	private static final int POSTCODE_LENGTH = 4;
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
			if (user.login(userEmail, userPass) != null) {
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

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String verifyRegistration(HttpServletRequest request, HttpSession session, Model model) {

		String firstName = request.getParameter("firstName").toString();
		String secondName = request.getParameter("secondName").toString();
		String lastName = request.getParameter("lastName").toString();
		String email = request.getParameter("email").toString();
		String password = request.getParameter("password").toString();
		String rePassword = request.getParameter("rePassword").toString();
		String gender = request.getParameter("gender").toString();
		String birthdate = request.getParameter("dateOfBirth").toString();
		String city = request.getParameter("city").toString();
		String address = request.getParameter("address").toString();
		String postcode = request.getParameter("postcode").toString();

		if (!Utils.checkString(firstName) && !Utils.checkString(secondName) && !Utils.checkString(lastName)
				&& !Utils.emailValidator(email) && !Utils.comparePasswords(password, rePassword)
				&& !Utils.checkString(gender) && !Utils.dateValidator(birthdate) && !Utils.checkString(city)
				&& !Utils.checkString(address) && !Utils.checkString(postcode) && postcode.length() != POSTCODE_LENGTH) {

			return "register";
		}

		boolean isMale = false;
		if (gender.toLowerCase().startsWith("m") || gender.toLowerCase().startsWith("м")) {
			isMale = true;
		}
		LocalDate dateOfBirth = LocalDate.parse(birthdate);
//		try {
//			Address userAddress = new Address(address, postcode, city);
//			user.register(firstName, secondName, lastName, email, password, isMale, dateOfBirth, userAddress);
//		} catch (ModelException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}

		return "index";
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

		user.changePassword(loggedUser, reenterNewPass);

		return "userProfile";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, Model model) {
		request.getSession().invalidate();
		return "index";
	}
}

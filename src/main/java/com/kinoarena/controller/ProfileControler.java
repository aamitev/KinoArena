package com.kinoarena.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProfileControler {
	
	@RequestMapping(value = "/userProfile", method = RequestMethod.GET)
	public String profile(Model model) {
		return "userProfile";
	}
	
	@RequestMapping(value = "/changePassword", method = RequestMethod.GET)
	public String changePassword(Model model) {
		return "changePassword";
	}
	
	@RequestMapping(value = "/favorites", method = RequestMethod.GET)
	public String favorites(Model model) {
		return "favorites";
	}
	
	@RequestMapping(value = "/newsletter", method = RequestMethod.GET)
	public String newsletter(Model model) {
		return "newsletter";
	}
	
	@RequestMapping(value = "/orders", method = RequestMethod.GET)
	public String orders(Model model) {
		return "orders";
	}
}

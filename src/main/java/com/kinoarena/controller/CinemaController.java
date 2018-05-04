package com.kinoarena.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CinemaController {

	@RequestMapping(method = RequestMethod.GET, value = "/cinemas")
	public String getAllCinemas(Model model) throws Exception {
		try {
			return "cinemas";
		} catch (Exception e) {
			return "error";
		}

	}
}

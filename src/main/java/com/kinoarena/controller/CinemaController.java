package com.kinoarena.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kinoarena.model.dao.CinemaDAO;
import com.kinoarena.model.vo.Cinema;

@Controller
public class CinemaController {

	@Autowired
	private CinemaDAO cinemaDao;

	@RequestMapping(method = RequestMethod.GET, value = "/cinemas")
	public String getAllCinemas(Model model) {
		try {
			List<Cinema> cinemas = cinemaDao.getAllCinemas();
			model.addAttribute("cinemas", cinemas);
			return "cinemas";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
	@RequestMapping(method = RequestMethod.GET, value = "/cinema/{id}")
	public String getAllCinemas(Model model, @PathVariable int id) {
		try {
			Cinema cinema = cinemaDao.getCinemaById(id);
			model.addAttribute("cinema", cinema);
			return "cinemaDetail";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}
}

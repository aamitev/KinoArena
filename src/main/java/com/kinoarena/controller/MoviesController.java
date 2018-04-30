package com.kinoarena.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kinoarena.model.dao.AddressDao;
import com.kinoarena.model.dao.MovieDao;
import com.kinoarena.model.vo.Address;

@Controller
public class MoviesController {
	@Autowired
	private MovieDao movieDao;
	@Autowired
	private AddressDao addressDao;

	@RequestMapping(method = RequestMethod.GET, value = "/movies")
	public String getAllMovies(Model model) throws Exception {
		List<Address> addresses = addressDao.getAllAddresses();
		// List<Address> movies = movieDao.getAllMovies();
		model.addAttribute("addresses", addresses.toString());

		return "movies";
	}
}

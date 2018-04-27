package com.kinoarena.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kinoarena.model.dao.MovieDao;
import com.kinoarena.model.vo.Genre;
import com.kinoarena.model.vo.Movie;

@Controller
public class MoviesController {
	@Autowired
	private MovieDao movieDao;

	@RequestMapping(method = RequestMethod.GET, value = "/movies")
	public String getAllMovies(Model model) throws Exception {
		
		List<Movie> movies = movieDao.getAllMovies();
		model.addAttribute("movies", movies);

		return "movies";
	}
}

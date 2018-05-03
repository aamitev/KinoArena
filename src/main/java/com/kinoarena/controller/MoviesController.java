package com.kinoarena.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.kinoarena.model.dao.MovieDao;
import com.kinoarena.model.vo.Movie;

@Controller
public class MoviesController {
	@Autowired
	private MovieDao movieDao;

	@RequestMapping(method = RequestMethod.GET, value = "/movies")
	public void getActiveMovies(Model model, HttpServletResponse response) throws Exception {
		List<Movie> movies = movieDao.getActiveMovies();
		Gson gson = new GsonBuilder().create();
		String json = gson.toJson(movies);
		response.setContentType("application/json");
		response.getWriter().println(json);

	}

	@RequestMapping(method = RequestMethod.GET, value = "/movies", params = "genre")
	public void getActiveMoviesByGenre(Model model, @RequestParam("genre") String genre, HttpServletResponse response)
			throws Exception {
		List<Movie> movies = movieDao.getActiveMoviesByGenre(genre);
		Gson gson = new GsonBuilder().create();
		String json = gson.toJson(movies);
		response.setContentType("application/json");
		response.getWriter().println(json);

	}

	@RequestMapping(method = RequestMethod.GET, value = "/movies", params = "title")
	public void getActiveMoviesByTitle(Model model, @RequestParam("title") String title, HttpServletResponse response)
			throws Exception {
		List<Movie> movies = movieDao.getActiveMoviesByTitle(title);
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		String json = gson.toJson(movies);
		System.out.println(json);
		response.setContentType("application/json");
		response.getWriter().println(json);

	}

	@RequestMapping(method = RequestMethod.GET, value = "/movies", params = "hall")
	public void getActiveMoviesByHallType(Model model, @RequestParam("hall") String hall, HttpServletResponse response)
			throws Exception {
		List<Movie> movies = movieDao.getActiveMoviesByHallType(hall.toUpperCase());
		Gson gson = new GsonBuilder().create();
		String json = gson.toJson(movies);
		response.setContentType("application/json");
		response.getWriter().println(json);

	}

	@RequestMapping(method = RequestMethod.GET, value = "/movie/{id}")
	public String getMovie(Model model, @PathVariable Integer id, HttpServletResponse response) throws Exception {
		Movie movie = movieDao.getMovieById(id);
		model.addAttribute("movie", movie);

		return "movie";

	}
}

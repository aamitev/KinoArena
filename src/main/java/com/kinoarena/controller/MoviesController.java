package com.kinoarena.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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

	private Gson gson = new GsonBuilder().create();

	@RequestMapping(method = RequestMethod.GET, value = "/movies")
	public void getActiveMovies(Model model, HttpServletResponse response) {
		try {
			List<Movie> movies = movieDao.getActiveMovies();
			// TODO FSON global
			String json = gson.toJson(movies);
			response.setContentType("application/json");
			response.getWriter().println(json);
		} catch (Exception e) {
			e.printStackTrace();
			try {
				response.getWriter().println("error");
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		}

	}

	@RequestMapping(method = RequestMethod.GET, value = "/movies", params = "genre")
	public void getActiveMoviesByGenre(Model model, @RequestParam("genre") String genre, HttpServletResponse response) {
		try {
			List<Movie> movies = movieDao.getActiveMoviesByGenre(genre);
			String json = gson.toJson(movies);
			response.setContentType("application/json");
			response.getWriter().println(json);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(method = RequestMethod.GET, value = "/movies", params = "title")
	public void getActiveMoviesByTitle(Model model, @RequestParam("title") String title, HttpServletResponse response) {
		try {
			List<Movie> movies = movieDao.getActiveMoviesByTitle(title);
			String json = gson.toJson(movies);
			System.out.println(json);
			response.setContentType("application/json");
			response.getWriter().println(json);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(method = RequestMethod.GET, value = "/movies", params = "hall")
	public void getActiveMoviesByHallType(Model model, @RequestParam("hall") String hall,
			HttpServletResponse response) {
		try {
			List<Movie> movies = movieDao.getActiveMoviesByHallType(hall.toUpperCase());
			String json = gson.toJson(movies);
			response.setContentType("application/json");
			response.getWriter().println(json);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(method = RequestMethod.GET, value = "/movie/{id}")
	public String getMovie(Model model, @PathVariable Integer id) {
		try {
			Movie movie = movieDao.getMovieById(id);
			model.addAttribute("movie", movie);

			return "movie";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

}

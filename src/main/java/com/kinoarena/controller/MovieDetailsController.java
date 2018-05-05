package com.kinoarena.controller;

import java.util.List;
import java.util.Map;

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
import com.kinoarena.dto.ScreeningDTO;
import com.kinoarena.model.dao.MovieDao;
import com.kinoarena.model.dao.ScreeningDao;
import com.kinoarena.model.vo.Movie;
import com.kinoarena.model.vo.Screening;

@Controller
public class MovieDetailsController {

	@Autowired
	private ScreeningDao screeningDao;
	@Autowired
	private MovieDao movieDao;
	
	private Gson gson = new GsonBuilder().create();

	//movieDetails page 
	@RequestMapping(method = RequestMethod.GET, value = "/movies/{id}")
	public String getMovie(Model model, @PathVariable Integer id) {
		try {
			Movie movie = movieDao.getMovieById(id);
			model.addAttribute("movie", movie);

			return "movieDetails";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	// Returns screeningDTO used in movieDetails page for the screening dates
	@RequestMapping(method = RequestMethod.GET, value = "/screenings", params = "movieId")
	public void getScreeningsDtoByMovieId(@RequestParam("movieId") int movieId, HttpServletResponse response) {
		try {
			List<ScreeningDTO> screenings = screeningDao.getScreeningsDtoByMovieId(movieId);
			String json = gson.toJson(screenings);
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().println(json);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//Returns hashmap of Cinema:{hall{[screenings]}}, used in movieDetail page 
	@RequestMapping(method = RequestMethod.GET, value = "/screenings", params = { "movieId", "date" })
	public void getScreeningsByMovieIdAndDate(@RequestParam("movieId") int movieId, @RequestParam("date") String date,
			HttpServletResponse response) {
		try {
			Map<String, Map<String, List<Screening>>> screenings = screeningDao.getScreeningsByMovieIdAndDate(movieId,
					date);
			String json = gson.toJson(screenings);
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().println(json);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


}

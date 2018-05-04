package com.kinoarena.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
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
import com.kinoarena.model.dao.AddressDao;
import com.kinoarena.model.dao.ScreeningDao;
import com.kinoarena.model.vo.Cinema;
import com.kinoarena.model.vo.Hall;
import com.kinoarena.model.vo.Movie;
import com.kinoarena.model.vo.Screening;

@Controller
public class ScreeningsController {

	private Gson gson = new GsonBuilder().create();

	@Autowired
	private ScreeningDao screeningDao;

	// Used in movie details page, program dates.
	@RequestMapping(method = RequestMethod.GET, value = "/screenings", params = "movieId")
	public void getScreeningsDtoByMovieId(@RequestParam("movieId") int movieId, HttpServletResponse response) {
		try {
			List<ScreeningDTO> screenings = screeningDao.getScreeningsDTO(movieId);
			String json = gson.toJson(screenings);
			response.setContentType("application/json");
			response.getWriter().println(json);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(method = RequestMethod.GET, value = "/screenings", params = { "movieId", "date" })
	public void getScreeningsByMovieIdAndDate(@RequestParam("movieId") int movieId, @RequestParam("date") String date,
			HttpServletResponse response) {
		try {
			Map<String, Map<String, List<Screening>>> screenings = screeningDao.getScreeningsByMovieIdAndDate(movieId,
					date);
			String json = gson.toJson(screenings);
			response.setContentType("application/json");
			response.getWriter().println(json);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(method = RequestMethod.GET, value = "/program")
	public String getScreeningProgram(Model model) {
		try {
			return "program";
		} catch (Exception e) {
			return "error";
		}

	}

}
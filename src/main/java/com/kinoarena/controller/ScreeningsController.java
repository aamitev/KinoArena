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
	@Autowired
	private ScreeningDao screeningDao;
	@Autowired
	private AddressDao addressDao;

	@RequestMapping(method = RequestMethod.GET, value = "/screenings", params = "movieId")
	public void getScreeningsDtoByMovieId(@RequestParam("movieId") int movieId, HttpServletResponse response)
			throws Exception {
		List<ScreeningDTO> screenings = screeningDao.getScreeningsDTO(movieId);
		Gson gson = new GsonBuilder().create();
		String json = gson.toJson(screenings);
		response.setContentType("application/json");
		response.getWriter().println(json);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/screenings", params = { "movieId", "date" })
	public void getScreeningsByMovieIdAndDate(@RequestParam("movieId") int movieId, @RequestParam("date") String date,
			HttpServletResponse response) throws Exception {
		Map<String, Map<String, List<Screening>>> screenings = screeningDao.getScreeningsByMovieIdAndDate(movieId, date);
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		String json = gson.toJson(screenings);
		System.out.println(json);
		response.setContentType("application/json");
		response.getWriter().println(json);
	}
	
	
	@RequestMapping(method = RequestMethod.GET, value = "/program")
	public String getScreeningProgram(Model model) throws Exception {
		try {
			return "program";
		} catch (Exception e) {
			return "error";
		}

	}

}
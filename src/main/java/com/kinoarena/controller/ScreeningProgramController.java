package com.kinoarena.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.kinoarena.dto.ScreeningDTO;
import com.kinoarena.model.dao.ScreeningDao;

@Controller
public class ScreeningProgramController {
	@Autowired
	private ScreeningDao screeningDao;

	private Gson gson = new GsonBuilder().create();

	@RequestMapping(method = RequestMethod.GET, value = "/program")
	public String getScreeningProgram(Model model) {
		try {
			return "program";
		} catch (Exception e) {
			return "error";
		}

	}

	@RequestMapping(method = RequestMethod.GET, value = "/screenings", params = "cinemaId")
	public void getScreeningsDtoByCinemaId(@RequestParam("cinemaId") int cinemaId, HttpServletResponse response) {
		try {
			List<ScreeningDTO> screenings = screeningDao.getScreeningsDtoByCinemaId(cinemaId);
			String json = gson.toJson(screenings);
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().println(json);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

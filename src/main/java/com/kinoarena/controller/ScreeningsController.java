package com.kinoarena.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.kinoarena.model.dao.AddressDao;
import com.kinoarena.model.dao.ScreeningDao;
import com.kinoarena.model.vo.Screening;

@Controller
public class ScreeningsController {
	@Autowired
	private ScreeningDao screeningDao;
	@Autowired
	private AddressDao addressDao;

	@RequestMapping(method = RequestMethod.GET, value = "/screenings")
	public void getAllMovies(Model model, HttpServletResponse response) throws Exception {
		List<Screening> screenings = screeningDao.getAllAvalibleScreenings();
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		String json = gson.toJson(screenings);
		System.out.println(json);
		response.setContentType("application/json");
		response.getWriter().println(json);

	}
}
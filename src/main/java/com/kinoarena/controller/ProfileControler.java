package com.kinoarena.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kinoarena.model.dao.MovieDao;
import com.kinoarena.model.enums.MovieType;
import com.kinoarena.model.vo.Movie;

@Controller
public class ProfileControler {

	@Autowired
	private MovieDao movieDao;

	@RequestMapping(value = "/userProfile", method = RequestMethod.GET)
	public String profile(Model model, HttpSession session) {
		try {
			if (session.getAttribute("loggedUser") == null) {
				return "redirect:/login";
			}
			return "userProfile";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	@RequestMapping(value = "/changePassword", method = RequestMethod.GET)
	public String changePassword(Model model, HttpSession session) {
		try {
			if (session.getAttribute("loggedUser") == null) {
				return "redirect:/login";
			}
			return "changePassword";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	@RequestMapping(value = "/favorites", method = RequestMethod.GET)
	public String favorites(Model model, HttpSession session) {
		try {
			if (session.getAttribute("loggedUser") == null) {
				return "redirect:/login";
			}
			return "favorites";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	@RequestMapping(value = "/addMovie", method = RequestMethod.GET)
	public String addMovie(Model model, HttpSession session) {
		try {
			if (session.getAttribute("loggedUser") == null) {
				return "redirect:/login";
			}
			return "addMovie";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	@RequestMapping(value = "/addMovie", method = RequestMethod.POST)
	public @ResponseBody String movieUpload(@RequestParam("file") MultipartFile file, HttpServletRequest request,
			Model model) {
		String UPLOAD_FOLDER = "C:\\kinoarena\\movies\\";

		String title = request.getParameter("title").toString();
		String description = request.getParameter("description").toString();
		String director = request.getParameter("director").toString();
		int length = Integer.parseInt(request.getParameter("length").toString());
		LocalDate premiere = LocalDate.parse(request.getParameter("premiere").toString());
		int ageLimitation = Integer.parseInt(request.getParameter("ageLimitation").toString());
		String movieType = request.getParameter("projectionType").toString();
		String genre = request.getParameter("genre").toString();

		if (!file.isEmpty()) {
			try {

				byte[] bytes = file.getBytes();
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(new File(UPLOAD_FOLDER + file.getOriginalFilename())));
				stream.write(bytes);
				stream.close();

				Movie movie = new Movie();
				movie.setTitle(title);
				movie.setDescription(description);
				movie.setDirector(director);
				movie.setDuration(length);
				movie.setPrimiere(premiere);
				movie.setAgeLimitation(ageLimitation);
				movie.setCoverURL("/uploaded/movie/" + file.getOriginalFilename());
				movie.setGenre(movieDao.getGenre(genre));
				switch (movieType) {
				case "2D":
					movie.setMovieType(MovieType._2D);
					break;
				case "3D":
					movie.setMovieType(MovieType._3D);
					break;
				case "4D":
					movie.setMovieType(MovieType._4D);
					break;

				default:
					movie.setMovieType(MovieType._2D);
					break;
				}
				movieDao.addMovie(movie);

				return "success";
			} catch (Exception e) {
				e.printStackTrace();
				return "error";
			}
		} else {
			return "error";
		}
	}

	@RequestMapping(value = "/orders", method = RequestMethod.GET)
	public String orders(Model model, HttpSession session) {
		try {
			if (session.getAttribute("loggedUser") == null) {
				return "redirect:/login";
			}
			return "orders";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}

	}
}

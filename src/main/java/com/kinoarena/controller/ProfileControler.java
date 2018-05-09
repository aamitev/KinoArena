package com.kinoarena.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.time.LocalDate;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kinoarena.dto.UserDTO;
import com.kinoarena.model.dao.AddressDao;
import com.kinoarena.model.dao.CinemaDAO;
import com.kinoarena.model.dao.FavoriteMovieDAO;
import com.kinoarena.model.dao.HallDAO;
import com.kinoarena.model.dao.MovieDao;
import com.kinoarena.model.dao.ScreeningDao;
import com.kinoarena.model.dao.UserDAO;
import com.kinoarena.model.vo.Address;
import com.kinoarena.model.vo.Cinema;
import com.kinoarena.model.vo.Hall;
import com.kinoarena.model.vo.Movie;
import com.kinoarena.utils.Utils;

@Controller
public class ProfileControler {

	@Autowired
	private UserDAO userDao;
	@Autowired
	private AddressDao addressDao;
	@Autowired
	private MovieDao movieDao;
	@Autowired
	private FavoriteMovieDAO favoriteMovieDao;
	@Autowired
	private CinemaDAO cinemaDao;
	@Autowired
	private HallDAO hallDao;
	@Autowired
	private ScreeningDao screeningDao;

	@RequestMapping(value = "/userProfile", method = RequestMethod.GET, produces = "text/html; charset=utf-8")
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

	@RequestMapping(value = "/editProfile", method = RequestMethod.POST)
	public String editProfile(Model model, HttpSession session, HttpServletRequest request) {
		try {
			if (session.getAttribute("loggedUser") == null) {
				return "redirect:/login";
			}

			request.setCharacterEncoding("UTF-8");
			// Getting field values
			String gender = request.getParameter("sex");
			boolean sex = gender.equalsIgnoreCase("true") ? true : false;
			String firstName = request.getParameter("firstName").toString();
			String secondName = request.getParameter("secondName").toString();
			String lastName = request.getParameter("lastName").toString();
			String email = ((UserDTO) session.getAttribute("loggedUser")).getEmail();
			String gsm = request.getParameter("gsm").toString();
			String city = request.getParameter("city").toString();
			String postcode = request.getParameter("postcode").toString();
			String streetAddress = new String(((String) request.getParameter("streetAddress")).getBytes(), "UTF-8");
			System.out.println("Stree adress " + streetAddress);
			LocalDate birthdate = LocalDate.parse(request.getParameter("dateOfBirth").toString());
			String education = request.getParameter("education").toString();
			String job = request.getParameter("job").toString();
			int id = userDao.getUserId(email);
			boolean isAdmin = ((UserDTO) session.getAttribute("loggedUser")).isAdmin();
			// Getting field values
			System.out.println(firstName);
			// Creating DTO object to import in DB
			UserDTO edittedUser = new UserDTO(id, email, firstName, secondName, lastName, sex, birthdate, isAdmin, gsm,
					education, job);
			// Creating DTO object to import in DB

			// Getting the address and setting it to the userDTO object
			int addressId = addressDao.getAddress(streetAddress, postcode, city).getId();
			Address address = new Address(addressId, streetAddress, postcode, city);
			edittedUser.setAddress(address);
			// Getting the address and setting it to the userDTO object

			// UPDATING the database
			userDao.editUser(edittedUser);

			return "userProfile";
		} catch (Exception e) {
			e.printStackTrace();
			return "userProfile";
		}
	}

	@RequestMapping(value = "/makeAdmin", method = RequestMethod.POST)
	public String makeAdmin(Model model, HttpSession session, HttpServletRequest request) {
		try {
			if (session.getAttribute("loggedUser") == null) {
				return "redirect:/login";
			}
			String userForAdminEmail = request.getParameter("makeAdmin").toString();
			userDao.makeUserAdmin(userForAdminEmail);

			// TODO: finish it!!
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
			UserDTO user = (UserDTO) session.getAttribute("loggedUser");
			List<Movie> favoriteMovies = favoriteMovieDao.getFavoriteMovies(user.getId());
			model.addAttribute("favoriteMovies", favoriteMovies);
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
	public String movieUpload(@RequestParam("file") MultipartFile file, HttpServletRequest request, Model model) {
		if (!Utils.fileValidator(file, model)) {
			return "addMovie";
		}

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
				movie.setMovieType(movieType.toUpperCase());
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

	@RequestMapping(value = "/addProjection", method = RequestMethod.GET)
	public String addProjection(Model model, HttpServletRequest request, HttpSession session) {
		try {
			if (session.getAttribute("loggedUser") == null) {
				return "redirect:/login";
			}

			request.setAttribute("allHalls", hallDao.getAllHalls());
			request.setAttribute("allMovies", movieDao.getAllMovies());

			return "addProjection";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	@RequestMapping(value = "/addProjection", method = RequestMethod.POST)
	public String executeAddProjection(Model model, HttpServletRequest request, HttpSession session) {
		try {
			if (session.getAttribute("loggedUser") == null) {
				return "redirect:/login";
			}

			String projectionName = request.getParameter("projectionVal").trim();
			String projectionDateTime = (request.getParameter("datePicker") + " " + request.getParameter("hourPicker")
					+ ":" + request.getParameter("minutesPicker") + ":00").trim();
			String hallName = request.getParameter("hallName").trim();
			String cinemaName = request.getParameter("cinemaName").trim();

			System.out.println(projectionName);
			System.out.println(projectionDateTime);
			System.out.println(hallName);
			System.out.println(cinemaName);
			
			Movie movie = movieDao.getMovieByName(projectionName);
			Hall hall = hallDao.getHallByName(hallName, cinemaName);
			
			screeningDao.addScreening(projectionDateTime, movie, hall);
			
			return "addProjection";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	@RequestMapping(value = "/addCinema", method = RequestMethod.GET)
	public String addCinema(Model model, HttpSession session) {
		try {
			if (session.getAttribute("loggedUser") == null) {
				return "redirect:/login";
			}
			return "addCinema";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	@RequestMapping(value = "/addCinema", method = RequestMethod.POST)
	public String executeAddCinema(@RequestParam("file") MultipartFile file, HttpServletRequest request, Model model) {
		if (!Utils.fileValidator(file, model)) {
			return "addCinema";
		}
		String UPLOAD_FOLDER = "C:\\kinoarena\\cinema\\";

		String cinemaName = request.getParameter("cinemaName").toString();
		String email = request.getParameter("email").toString();
		String gsm = request.getParameter("gsm").toString();
		String streetAddress = request.getParameter("address").toString();
		String postcode = request.getParameter("postcode").toString();
		String city = request.getParameter("city").toString();

		if (!file.isEmpty()) {
			try {

				byte[] bytes = file.getBytes();
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(new File(UPLOAD_FOLDER + file.getOriginalFilename())));
				stream.write(bytes);
				stream.close();
				Address address = addressDao.getAddress(streetAddress, postcode, city);

				Cinema cinema = new Cinema();

				cinema.setName(cinemaName);
				cinema.setEmail(email);
				cinema.setGsm(gsm);
				cinema.setAddress(address);

				cinema.setCinemaCoverURL("/uploaded/cinema/" + file.getOriginalFilename());

				cinemaDao.addCinema(cinema);
				return "success";
			} catch (Exception e) {
				e.printStackTrace();
				return "error";
			}
		} else {
			return "error";
		}

	}

	@RequestMapping(value = "/addHall", method = RequestMethod.GET)
	public String addHall(Model model, HttpServletRequest request, HttpSession session) {
		try {
			if (session.getAttribute("loggedUser") == null) {
				return "redirect:/login";
			}
			
			Set<Hall> halls = new HashSet<Hall>(hallDao.getAllHalls());
			
			request.setAttribute("allCinemas", cinemaDao.getAllCinemas());
			request.setAttribute("allHalls", halls);
			return "addHall";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	@RequestMapping(value = "/addHall", method = RequestMethod.POST)
	public String executedAddHall(Model model, HttpServletRequest request, HttpSession session) {
		try {
			if (session.getAttribute("loggedUser") == null) {
				return "redirect:/login";
			}
			
			String cinema = request.getParameter("cinemaName");
			String hall = request.getParameter("hallType");
			
			System.out.println(cinema);
			System.out.println(hall);
			
			Cinema cinemaObj = cinemaDao.getCinemaByName(cinema);
			Hall hallObj = new Hall(hallDao.getLastHallId(), hall, cinemaObj);
			
			return "addHall";
		} catch (Exception e) {
			e.printStackTrace();
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

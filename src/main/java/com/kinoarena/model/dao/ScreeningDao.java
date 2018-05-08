package com.kinoarena.model.dao;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.kinoarena.dto.ScreeningDTO;
import com.kinoarena.model.mappers.ScreeningDtoRowMapper;
import com.kinoarena.model.mappers.ScreeningRowMapper;
import com.kinoarena.model.vo.Cinema;
import com.kinoarena.model.vo.Hall;
import com.kinoarena.model.vo.Movie;
import com.kinoarena.model.vo.Screening;

@Component
public class ScreeningDao implements IScreeningDao {
	private static final String GET_SCREENINGS_OF_MOVIE_BY_DATE = "SELECT * FROM screening s "
			+ "JOIN movies m ON(s.movie_id=m.movie_id) " + "LEFT OUTER JOIN genres g ON(m.genres_id = g.genre_id) "
			+ "JOIN halls h ON(s.halls_id =h.hall_id) " + "JOIN cinema c ON(h.cinema_id=c.cinema_id) "
			+ "JOIN address a ON(c.address_id=a.address_id)"
			+ "WHERE(m.movie_id = ?) AND (DATE(s.startTime) = DATE(?));";

	private static final String GET_SCREENINGS_DTO_BY_MOVIE_ID = "SELECT * FROM screening s "
			+ "JOIN movies m ON(s.movie_id=m.movie_id) "
			+ "LEFT OUTER JOIN genres g ON(m.genres_id = g.genre_id) WHERE(m.movie_id = ? AND DATE(s.startTime) >= DATE(?))"
			+ "GROUP BY (DATE(s.startTime));";

	private static final String GET_SCREENINGS_DTO_BY_CINEMA_ID = "SELECT * FROM screening s "
			+ "JOIN halls h ON(s.halls_id = h.hall_id) " + "JOIN cinema c ON(h.cinema_id = c.cinema_id) "
			+ "WHERE (c.cinema_id = ?) AND (DATE(s.startTime) >= DATE(?))" + "GROUP BY (DATE(s.startTime));";

	private static final String SCREENINGS_BY_CINEMA_AND_DATE = "SELECT * FROM screening s "
<<<<<<< HEAD
			+ "JOIN movies m ON(s.movie_id=m.movie_id) "
			+ "JOIN genres g ON(m.genres_id=g.genre_id) "
			+ "JOIN halls h ON(s.halls_id=h.hall_id) "
			+ "JOIN cinema c ON(h.cinema_id=c.cinema_id) "
			+ "JOIN address a ON(c.address_id= a.address_id)"
			+ "WHERE(c.cinema_id = ?)AND(DATE(s.startTime)=(?));";
	public static final String SQL_ADD_SCREENING = "INSERT into screening VALUES(null, ?, ?, ?);";
=======
			+ "JOIN movies m ON(s.movie_id=m.movie_id) " + "JOIN genres g ON(m.genres_id=g.genre_id) "
			+ "JOIN halls h ON(s.halls_id=h.hall_id) " + "JOIN cinema c ON(h.cinema_id=c.cinema_id) "
			+ "JOIN address a ON(c.address_id= a.address_id)" + "WHERE(c.cinema_id = ?)AND(DATE(s.startTime)=(?));";

	private static final String GET_SCREENING_BY_ID = "SELECT * FROM screening s " +
			"JOIN movies m ON(s.movie_id=m.movie_id) LEFT OUTER JOIN genres g ON(m.genres_id=g.genre_id) " + 
			"JOIN halls h ON(s.halls_id=h.hall_id) JOIN cinema c ON(h.cinema_id=c.cinema_id) " + 
			"JOIN address a ON(c.address_id= a.address_id) WHERE(s.screening_id=?);";

>>>>>>> c9e7abaeb30ca6b31e3d6a6f9d8b9881da6a577f
	@Autowired
	private JdbcTemplate jdbcTemplate;
	@Autowired
	private ScreeningDtoRowMapper screeningDtoRowMapper;
	@Autowired
	private ScreeningRowMapper screeningMapper;

	public Screening getScreeningById(int id) {
		try {
			Screening screening = jdbcTemplate.queryForObject(GET_SCREENING_BY_ID, new Object[] { id },
					screeningMapper);
			return screening;
		} catch (EmptyResultDataAccessException e) {
			e.printStackTrace();
			return null;
		}

	}

	public List<ScreeningDTO> getScreeningsDtoByMovieId(int id) {
		List<ScreeningDTO> screenings = jdbcTemplate.query(GET_SCREENINGS_DTO_BY_MOVIE_ID,
				new Object[] { id, LocalDateTime.now() }, screeningDtoRowMapper);
		return screenings;
	}

	public List<ScreeningDTO> getScreeningsDtoByCinemaId(int id) {
		List<ScreeningDTO> screenings = jdbcTemplate.query(GET_SCREENINGS_DTO_BY_CINEMA_ID,
				new Object[] { id, LocalDateTime.now() }, screeningDtoRowMapper);
		return screenings;
	}

	@Override
	public Map<String, Map<String, List<Screening>>> getScreeningsByMovieIdAndDate(int id, String date) {
		List<Screening> screenings = jdbcTemplate.query(GET_SCREENINGS_OF_MOVIE_BY_DATE, new Object[] { id, date },
				screeningMapper);
		Map<String, Map<String, List<Screening>>> screeningsByCinema = new HashMap<String, Map<String, List<Screening>>>();

		for (Screening screening : screenings) {
			Hall hall = screening.getHall();
			Cinema cinema = hall.getCinema();
			if (!screeningsByCinema.containsKey(cinema.getName())) {
				screeningsByCinema.put(cinema.getName(), new HashMap<String, List<Screening>>());
			}
			if (!screeningsByCinema.get(cinema.getName()).containsKey(hall.getName())) {
				screeningsByCinema.get(cinema.getName()).put(hall.getName(), new LinkedList<Screening>());
			}
			screeningsByCinema.get(cinema.getName()).get(hall.getName()).add(screening);
		}

		return screeningsByCinema;
	}

	public Map<String, Map<String, List<Screening>>> getScreeningsByCinemaIdAndDate(int id, String date) {
		List<Screening> screenings = jdbcTemplate.query(SCREENINGS_BY_CINEMA_AND_DATE, new Object[] { id, date },
				screeningMapper);
		Map<String, Map<String, List<Screening>>> screeningsByCinema = new HashMap<String, Map<String, List<Screening>>>();

		for (Screening screening : screenings) {
			Hall hall = screening.getHall();
			Movie movie = screening.getMovie();
			if (!screeningsByCinema.containsKey(movie.getTitle())) {
				screeningsByCinema.put(movie.getTitle(), new HashMap<String, List<Screening>>());
			}
			if (!screeningsByCinema.get(movie.getTitle()).containsKey(hall.getName())) {
				screeningsByCinema.get(movie.getTitle()).put(hall.getName(), new LinkedList<Screening>());
			}
			screeningsByCinema.get(movie.getTitle()).get(hall.getName()).add(screening);
		}

		return screeningsByCinema;
	}

	@Override
	public List<Screening> getAllAvalibleScreenings() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addScreening(String startTime, Movie movie, Hall hall) {
		jdbcTemplate.update(SQL_ADD_SCREENING, startTime, movie.getId(), hall.getId());
	}
	
	
}

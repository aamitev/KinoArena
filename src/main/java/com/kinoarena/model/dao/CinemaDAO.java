package com.kinoarena.model.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.kinoarena.model.mappers.CinemaRowMapper;
import com.kinoarena.model.vo.Cinema;
import com.kinoarena.model.vo.Movie;

@Component
public class CinemaDAO implements ICinemaDAO {
	private static final String GET_ALL_CINEMAS = "SELECT * FROM cinema c JOIN address a ON(c.address_id = a.address_id);";

	private static final String GET_CINEMA_BY_ID = "SELECT * FROM cinema c JOIN address a ON(c.address_id = a.address_id) WHERE (c.cinema_id = ?)";

	@Autowired
	private JdbcTemplate jdbcTemplate;
	@Autowired
	CinemaRowMapper cinemaRowMapper;

	@Override
	public List<Cinema> getAllCinemas() {
		List<Cinema> cinemas = jdbcTemplate.query(GET_ALL_CINEMAS, cinemaRowMapper);
		System.out.println(cinemas.toString());
		return cinemas;

	}
	
	@Override
	public Cinema getCinemaById(int id) {
		try {
			Cinema cinema = jdbcTemplate.queryForObject(GET_CINEMA_BY_ID, new Object[] { id }, cinemaRowMapper);
			return cinema;
		} catch (EmptyResultDataAccessException e) {
			e.printStackTrace();
			return null;
		}

	}
}

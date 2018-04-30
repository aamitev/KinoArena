package com.kinoarena.model.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.kinoarena.model.mappers.AddressRowMapper;
import com.kinoarena.model.mappers.MovieRowMapper;
import com.kinoarena.model.vo.Movie;

@Component
public class MovieDao implements IMovieDao {

	private static final String GET_MOVIES = "SELECT * FROM movies;";

	@Autowired
	private JdbcTemplate jdbcTemplate;
	@Autowired
	private MovieRowMapper movieRowMapper;

	@Override
	public void addMovie(Movie movie) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void editMovie(Movie movie) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteMovie(Movie movie) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Movie> getAllMovies() throws Exception {
		List<Movie> movies = jdbcTemplate.query(GET_MOVIES, movieRowMapper);
		return movies;
	}

	@Override
	public Movie getMovieById(int id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}

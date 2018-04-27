package com.kinoarena.model.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.kinoarena.exceptions.MovieException;
import com.kinoarena.model.vo.Movie;

@Component
public class MovieDao implements IMovieDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public class MovieRowMapper implements RowMapper<Movie> {
		public Movie mapRow(ResultSet rs, int rowNum) throws SQLException {
			Movie movie = null;
			try {
				movie = new Movie(
						rs.getString("title"),
						rs.getString("director"),
						rs.getInt("duration"),
					    rs.getDate("premiere").toLocalDate());
			} catch (MovieException e) {
				e.printStackTrace();
			}

			return movie;
		}

	}

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
		List<Movie> movies = jdbcTemplate.query("SELECT * FROM movies", new MovieRowMapper());
		return movies;
	}

	@Override
	public Movie getMovieById(int id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}

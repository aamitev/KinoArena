package com.kinoarena.model.dao;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.kinoarena.model.mappers.MovieRowMapper;
import com.kinoarena.model.vo.Movie;

@Component
public class MovieDao implements IMovieDao {

	private static final String GET_MOVIES = "SELECT * FROM movies;";
	private static final String GET_ACTIVE_MOVIES = "SELECT m.*,g.* FROM movies m JOIN screening s ON(s.movie_id=m.movie_id) LEFT OUTER jOIN genres g ON(m.genres_id=g.genre_id) WHERE(s.startTime > DATE(?)) GROUP BY (m.movie_id);";
	private static final String GET_ACTIVE_MOVIES_BY_GENRE = "SELECT m.*,g.* FROM movies m JOIN screening s ON(s.movie_id=m.movie_id) LEFT OUTER jOIN genres g ON(m.genres_id=g.genre_id) WHERE(g.genre = ? ) "
			+ "AND (s.startTime > DATE(?)) GROUP BY (m.movie_id);";
	private static final String GET_ACTIVE_MOVIES_BY_TITLE = "SELECT m.*,g.* FROM movies m JOIN screening s ON(s.movie_id=m.movie_id) LEFT OUTER jOIN genres g ON(m.genres_id=g.genre_id) WHERE(m.title LIKE(?) ) "
			+ "AND (s.startTime > DATE(?)) GROUP BY (m.movie_id);";
	private static final String GET_ACTIVE_MOVIES_BY_HALL = "SELECT m.*,g.* FROM movies m "
			+ "JOIN screening s ON(s.movie_id=m.movie_id) LEFT OUTER jOIN " + " genres g ON(m.genres_id=g.genre_id) "
			+ " JOIN halls h ON(s.halls_id=h.hall_id) WHERE(h.hallType = ?) AND (s.startTime > DATE(?)) GROUP BY (m.movie_id);";
	private static final String GET_ACTIVE_MOVIES_BY_ID = "SELECT m.*,g.* FROM movies m LEFT OUTER jOIN genres g ON(m.genres_id=g.genre_id) WHERE (m.movie_id = ? );";

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
		Movie movie = jdbcTemplate.queryForObject(GET_ACTIVE_MOVIES_BY_ID, new Object[] { id },
				movieRowMapper);
		return movie;
	}
	
	public List<Movie> getActiveMoviesByTitle(String title) {
		List<Movie> movies = jdbcTemplate.query(GET_ACTIVE_MOVIES_BY_TITLE,
				new Object[] { title +"%", Timestamp.valueOf(LocalDateTime.now()) }, movieRowMapper);
		return movies;
	}

	public List<Movie> getActiveMoviesByHallType(String hall) {
		List<Movie> movies = jdbcTemplate.query(GET_ACTIVE_MOVIES_BY_HALL,
				new Object[] { hall, Timestamp.valueOf(LocalDateTime.now()) }, movieRowMapper);
		return movies;
	}

	public List<Movie> getActiveMoviesByGenre(String genre) {
		List<Movie> movies = jdbcTemplate.query(GET_ACTIVE_MOVIES_BY_GENRE,
				new Object[] { genre, Timestamp.valueOf(LocalDateTime.now()) }, movieRowMapper);
		return movies;
	}

	public List<Movie> getActiveMovies() {
		List<Movie> movies = jdbcTemplate.query(GET_ACTIVE_MOVIES,
				new Object[] { Timestamp.valueOf(LocalDateTime.now()) }, movieRowMapper);
		return movies;
	}

}

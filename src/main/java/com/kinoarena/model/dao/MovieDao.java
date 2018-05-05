package com.kinoarena.model.dao;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.kinoarena.exceptions.MovieException;
import com.kinoarena.model.mappers.GenreRowMapper;
import com.kinoarena.model.mappers.MovieRowMapper;
import com.kinoarena.model.vo.Genre;
import com.kinoarena.model.vo.Movie;

@Component
public class MovieDao implements IMovieDao {

	private static final String GET_MOVIES = "SELECT * FROM movies;";
	private static final String GET_ACTIVE_MOVIES = "SELECT m.*,g.* FROM movies m JOIN screening s ON(s.movie_id=m.movie_id) LEFT OUTER jOIN genres g ON(m.genres_id=g.genre_id) WHERE(s.startTime > DATE(?)) GROUP BY (m.movie_id);";
	private static final String GET_ACTIVE_MOVIES_BY_GENRE = "SELECT m.*,g.* FROM movies m JOIN screening s ON(s.movie_id=m.movie_id) LEFT OUTER jOIN genres g ON(m.genres_id=g.genre_id) WHERE(g.genre = ? ) "
			+ "AND (DATE(s.startTime) >= DATE(?)) GROUP BY (m.movie_id);";
	private static final String GET_ACTIVE_MOVIES_BY_TITLE = "SELECT m.*,g.* FROM movies m JOIN screening s ON(s.movie_id=m.movie_id) LEFT OUTER jOIN genres g ON(m.genres_id=g.genre_id) WHERE(m.title LIKE(?) ) "
			+ "AND (s.startTime >= DATE(?)) GROUP BY (m.movie_id);";
	private static final String GET_ACTIVE_MOVIES_BY_HALL = "SELECT m.*,g.* FROM movies m "
			+ "JOIN screening s ON(s.movie_id=m.movie_id) LEFT OUTER jOIN " + " genres g ON(m.genres_id=g.genre_id) "
			+ " JOIN halls h ON(s.halls_id=h.hall_id) WHERE(h.hallType = ?) AND (s.startTime >= ?) GROUP BY (m.movie_id);";
	private static final String GET_ACTIVE_MOVIES_BY_ID = "SELECT m.*,g.* FROM movies m LEFT OUTER jOIN genres g ON(m.genres_id=g.genre_id) WHERE (m.movie_id = ? );";
	private static final String SQL_INSERT_MOVIE = "INSERT INTO movies VALUES(null, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
	@Autowired
	private JdbcTemplate jdbcTemplate;
	@Autowired
	private MovieRowMapper movieRowMapper;
	@Autowired
	private GenreRowMapper genreRowMapper;
	@Override
	public void addMovie(Movie movie) throws Exception {
		//	"INSERT INTO movies VALUES(null, 'testTitle', 'C://testCover', 'testDescription', 'testDirector', 90, '2018-12-12', 0, 'animation', 2);";
		if(movie != null) {
			jdbcTemplate.update(SQL_INSERT_MOVIE, movie.getTitle(), movie.getCoverURL(), movie.getDescription(),
					movie.getDirector(), movie.getDuration(), movie.getPrimiere().toString(), movie.getAgeLimitation(),
					movie.getMovieType().toString(), movie.getGenre().getId());
		}else throw new MovieException("Null movie.");
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
	public Movie getMovieById(int id) {
		try {
			Movie movie = jdbcTemplate.queryForObject(GET_ACTIVE_MOVIES_BY_ID, new Object[] { id }, movieRowMapper);
			return movie;
		} catch (EmptyResultDataAccessException e) {
			e.printStackTrace();
			return null;
		}

	}

	public List<Movie> getActiveMoviesByTitle(String title) {
		List<Movie> movies = jdbcTemplate.query(GET_ACTIVE_MOVIES_BY_TITLE,
				new Object[] { title + "%", Timestamp.valueOf(LocalDateTime.now()) }, movieRowMapper);
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

	@Override
	public Genre getGenre(String genre) {
		
		Genre genreObj = (Genre) jdbcTemplate.queryForObject("SELECT * FROM genres WHERE genre = ?;",
	            new Object[] { genre }, genreRowMapper);
		return genreObj;
	}
}

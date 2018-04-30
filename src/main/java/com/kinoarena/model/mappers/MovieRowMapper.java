package com.kinoarena.model.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.kinoarena.model.vo.Movie;

@Component
public class MovieRowMapper implements RowMapper<Movie> {
	@Autowired
	private GenreRowMapper genreMapper;

	public Movie mapRow(ResultSet rs, int rowNum) throws SQLException {
		Movie movie = null;
		try {
			movie = new Movie(rs.getInt("id"), rs.getString("title"), rs.getString("coverURL"),
					rs.getString("description"), rs.getString("director"), rs.getInt("duration"), rs.getInt("pgAge"),
					genreMapper.mapRow(rs, rowNum), rs.getDate("premiere").toLocalDate());

		} catch (Exception e) {
			throw new SQLException(e);
		}

		return movie;
	}

}

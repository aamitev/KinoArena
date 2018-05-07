package com.kinoarena.model.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.kinoarena.model.vo.Genre;

@Component
public class GenreDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;



	public Genre getGenreById(int id) throws Exception {
//		Genre genre = (Genre) jdbcTemplate.queryForObject("SELECT * FROM genres where id = ? ", new Object[] { id },
//				new GenreRowMapper());

		return null;

	}
}

package com.kinoarena.model.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.kinoarena.model.mappers.MovieRowMapper;
import com.kinoarena.model.mappers.ScreeningRowMapper;
import com.kinoarena.model.vo.Movie;
import com.kinoarena.model.vo.Screening;


@Component
public class ScreeningDao implements IScreeningDao {
	private static final String GET_ALL_SCREENINGS = null;

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	private ScreeningRowMapper screeningMapper;

	@Override
	public List<Screening> getAllAvalibleScreenings() {
		List<Screening> movies = jdbcTemplate.query(GET_ALL_SCREENINGS, screeningMapper);
		return null;
	}

}

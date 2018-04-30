package com.kinoarena.model.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.kinoarena.model.mappers.ScreeningRowMapper;
import com.kinoarena.model.vo.Screening;


@Component
public class ScreeningDao implements IScreeningDao {
	private static final String GET_ALL_SCREENINGS = "SELECT * FROM screening s JOIN movies m ON(s.movie_id=m.id)JOIN genres g ON(m.genres_id = g.id)JOIN halls h ON(s.halls_id =h.id)JOIN cinema c ON(h.cinema_id=c.id)JOIN address a ON(c.address_id=a.id)JOIN city ci ON(a.city_id=ci.id);";

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	private ScreeningRowMapper screeningMapper;

	@Override
	public List<Screening> getAllAvalibleScreenings() {
		List<Screening> screenings = jdbcTemplate.query(GET_ALL_SCREENINGS, screeningMapper);
		return screenings;
	}

}

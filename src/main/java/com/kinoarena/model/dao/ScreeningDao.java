package com.kinoarena.model.dao;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.kinoarena.dto.ScreeningDTO;
import com.kinoarena.model.mappers.ScreeningDtoRowMapper;
import com.kinoarena.model.mappers.ScreeningRowMapper;
import com.kinoarena.model.vo.Screening;

@Component
public class ScreeningDao implements IScreeningDao {
	private static final String GET_SCREENINGS_OF_MOVIE_BY_DATE = "SELECT * FROM screening s "
			+ "JOIN movies m ON(s.movie_id=m.id) " + "JOIN genres g ON(m.genres_id = g.id) "
			+ "JOIN halls h ON(s.halls_id =h.id) " + "JOIN cinema c ON(h.cinema_id=c.id) "
			+ "JOIN address a ON(c.address_id=a.id) " + "WHERE(m.id = s.movie_id AND (s.startTime >= ?);";

	private static final String GET_SCREENINGS_DTO_BY_MOVIE_ID = "SELECT * FROM screening s "
			+ "JOIN movies m ON(s.movie_id=m.id) " + "LEFT OUTER JOIN genres g ON(m.genres_id = g.id) WHERE(m.id = ? AND s.startTime >= ? )";

	@Autowired
	private JdbcTemplate jdbcTemplate;
	@Autowired
	private ScreeningDtoRowMapper screeningDtoRowMapper;
	@Autowired
	private ScreeningRowMapper screeningMapper;

	public List<ScreeningDTO> getScreeningsDTO(int id) {
		List<ScreeningDTO> screenings = jdbcTemplate.query(GET_SCREENINGS_DTO_BY_MOVIE_ID,
				new Object[] { id, Timestamp.valueOf(LocalDateTime.now()) }, screeningDtoRowMapper);
		return screenings;
	}

	public List<Screening> getScreeningsByMovieIdAndDate(int id, String date) {
		List<Screening> screenings = jdbcTemplate.query(GET_SCREENINGS_OF_MOVIE_BY_DATE,
				new Object[] { id, Timestamp.valueOf(date) }, screeningMapper);
		return screenings;
	}

	@Override
	public List<Screening> getAllAvalibleScreenings() {
		// TODO Auto-generated method stub
		return null;
	}
}

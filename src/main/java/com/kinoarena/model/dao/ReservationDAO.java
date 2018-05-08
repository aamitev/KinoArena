package com.kinoarena.model.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.kinoarena.model.mappers.ReservationTicketTypeRowMapper;
import com.kinoarena.model.vo.ReservationTicketType;

@Component
public class ReservationDAO {

	private static final String GET_TICKETTYPE_BY_SCREENING_ID = "SELECT r.* FROM reservationtype r "
			+ "JOIN  screening_has_reservationtype shr ON(r.reservationType_id =shr.reservationType_id) "
			+ "JOIN screening s ON(shr.screening_id = s.screening_id) WHERE (s.screening_id = ?);";
	@Autowired
	private JdbcTemplate jdbcTemplate;
	@Autowired
	ReservationTicketTypeRowMapper ticketTypeRowMapper;

	public List<ReservationTicketType> getTicketTypesByScreeningId(int id) {
		List<ReservationTicketType> ticketTypes = jdbcTemplate.query(GET_TICKETTYPE_BY_SCREENING_ID,
				new Object[] { id }, ticketTypeRowMapper);
		return ticketTypes;
	}
}

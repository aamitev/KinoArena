package com.kinoarena.model.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.kinoarena.model.mappers.SeatRowMapper;
import com.kinoarena.model.vo.Seat;

@Component
public class SeatDAO implements ISeatDAO {

	private static final String GET_RESERVED_SEATS_BY_SCREENING = "SELECT * FROM reservedseat rs "
			+ "JOINseat s ON(rs.seat_id = s.seat_id) " + "JOIN halls h ON(s.halls_id = h.hall_id) "
			+ "JOIN cinema c ON(h.cinema_id=c.cinema_id) " + "JOIN address a ON(a.address_id = c.address_id);";
	private static final String GET_LAST_SEAT = "SELECT * FROM seat s JOIN halls h ON (s.halls_id = h.hall_id) JOIN cinema c ON (h.cinema_id = c.cinema_id) JOIN address a ON (c.address_id = a.address_id) ORDER BY seat_id DESC LIMIT 1;";
	
	@Autowired
	JdbcTemplate jdbcTemplate;

	@Autowired
	SeatRowMapper seatRowMapper;

	@Override
	public List<Seat> getAllResercedSeatsByScreeningID(int id) throws Exception {
		List<Seat> movies = jdbcTemplate.query(GET_RESERVED_SEATS_BY_SCREENING, new Object[] { id }, seatRowMapper);
		return movies;
	}

	@Override
	public int getLastSeatId() {
		Seat seat = jdbcTemplate.queryForObject(GET_LAST_SEAT, new Object[] {}, seatRowMapper);
		
		return seat.getId();
	}

	@Override
	public void addSeat(List<Seat> seats) {
		for(Seat seat : seats) {
			jdbcTemplate.update(SQL_ADD_SEAT, seat.getId(), seat.getRow(), seat.getNumber(), seat.getId());
		}
	}
	
	
}

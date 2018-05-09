package com.kinoarena.model.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.kinoarena.model.mappers.SeatRowMapper;
import com.kinoarena.model.vo.Seat;

@Component
public class SeatDAO implements ISeatDAO {

	private static final String GET_RESERVED_SEATS_BY_SCREENING = "SELECT * FROM reservedseat rs "
			+ "JOIN seat s ON(rs.seat_id = s.seat_id) " + "JOIN halls h ON(s.halls_id = h.hall_id) "
			+ "JOIN cinema c ON(h.cinema_id=c.cinema_id) "
			+ "JOIN address a ON(a.address_id = c.address_id) WHERE(rs.screening_id = ?);";
	private static final String GET_SEATS_BY_HALL = "SELECT * FROM seat s " + "JOIN halls h ON(s.halls_id = h.hall_id) "
			+ "JOIN cinema c ON(h.cinema_id=c.cinema_id) "
			+ "JOIN address a ON(a.address_id = c.address_id) WHERE(h.hall_id = ?);";
	@Autowired
	JdbcTemplate jdbcTemplate;

	@Autowired
	SeatRowMapper seatRowMapper;

	@Override
	public Map<Byte, List<Seat>> getAllSeadsByHall(int id) throws Exception {
		List<Seat> seats = jdbcTemplate.query(GET_SEATS_BY_HALL, new Object[] { id }, seatRowMapper);
		Map<Byte, List<Seat>> sortedSeats = new HashMap<Byte, List<Seat>>();
		for (Seat seat : seats) {
			if (!sortedSeats.containsKey(seat.getRow())) {
				sortedSeats.put(seat.getRow(), new LinkedList<Seat>());
			}
			sortedSeats.get(seat.getRow()).add(seat);
		}

		return sortedSeats;
	}

	@Override
	public List<Seat> getAllReservedSeatsByScreeningID(int id) throws Exception {
		List<Seat> movies = jdbcTemplate.query(GET_RESERVED_SEATS_BY_SCREENING, new Object[] { id }, seatRowMapper);
		return movies;
	}
	
	//insert batch example
	public void insertSeats(final List<Seat> seats){
			
	  String sql = "INSERT INTO CUSTOMER " +
		"(CUST_ID, NAME, AGE) VALUES (?, ?, ?)";
				
	  jdbcTemplate.batchUpdate(sql, new BatchPreparedStatementSetter() {
				
		@Override
		public void setValues(PreparedStatement ps, int i) throws SQLException {
			Seat customer = seats.get(i);
//			ps.setLong(1, customer.getCustId());
//			ps.setString(2, customer.getName());
//			ps.setInt(3, customer.getAge() );
		}
				
		@Override
		public int getBatchSize() {
			return seats.size();
		}
	  });
	}
}

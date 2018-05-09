package com.kinoarena.model.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.kinoarena.model.mappers.ReservationTicketTypeRowMapper;
import com.kinoarena.model.mappers.SeatRowMapper;
import com.kinoarena.model.vo.ReservationTicketType;
import com.kinoarena.model.vo.Seat;

@Component
public class ReservationDAO implements IReservationDAO {

	private static final String GET_TICKETTYPE_BY_SCREENING_ID = "SELECT r.* FROM reservationtype r "
			+ "JOIN  screening_has_reservationtype shr ON(r.reservationType_id =shr.reservationType_id) "
			+ "JOIN screening s ON(shr.screening_id = s.screening_id) WHERE (s.screening_id = ?);";
	private static final String RESERVE_SEATS = "INSERT INTO reservedseat VALUES(null,?,?)";
	private static final String GET_RESERVED_SEATS_BY_SCREENING = "SELECT * FROM reservedseat rs "
			+ "JOIN seat s ON(rs.seat_id = s.seat_id) " + "JOIN halls h ON(s.halls_id = h.hall_id) "
			+ "JOIN cinema c ON(h.cinema_id=c.cinema_id) "
			+ "JOIN address a ON(a.address_id = c.address_id) WHERE(rs.screening_id = ?);";
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	SeatRowMapper seatRowMapper;
	@Autowired
	ReservationTicketTypeRowMapper ticketTypeRowMapper;

	public List<ReservationTicketType> getTicketTypesByScreeningId(int id) {
		List<ReservationTicketType> ticketTypes = jdbcTemplate.query(GET_TICKETTYPE_BY_SCREENING_ID,
				new Object[] { id }, ticketTypeRowMapper);
		return ticketTypes;
	}

	// reserve number of seats
	@Override
	public void reserveSeats(final List<Integer> seatsIDs, int screeningId) {

		jdbcTemplate.batchUpdate(RESERVE_SEATS, new BatchPreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps, int i) throws SQLException {
				Integer seatId = seatsIDs.get(i);
				ps.setInt(1, seatId);
				ps.setInt(2, screeningId);
			}

			@Override
			public int getBatchSize() {
				return seatsIDs.size();
			}
		});
	}
	@Override
	public List<Seat> getAllReservedSeatsByScreeningID(int id) throws Exception {
		List<Seat> movies = jdbcTemplate.query(GET_RESERVED_SEATS_BY_SCREENING, new Object[] { id }, seatRowMapper);
		return movies;
	}

}

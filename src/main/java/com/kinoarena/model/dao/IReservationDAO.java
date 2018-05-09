package com.kinoarena.model.dao;

import java.util.List;

import com.kinoarena.model.vo.ReservationTicketType;
import com.kinoarena.model.vo.Seat;

public interface IReservationDAO {

	void reserveSeats(List<Integer> seats, int screeningId);

	List<Seat> getAllReservedSeatsByScreeningID(int id) throws Exception;

	List<ReservationTicketType> getTicketTypesByScreeningId(int id);

	List<ReservationTicketType> getTicketTypes();


}

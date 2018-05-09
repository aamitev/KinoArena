package com.kinoarena.model.dao;

import java.util.List;

import com.kinoarena.model.vo.Seat;

public interface ISeatDAO {
	public static final String SQL_ADD_SEAT = "INSERT INTO seat VALUES(?, ?, ?, ?);";
	
	List<Seat> getAllResercedSeatsByScreeningID(int id) throws Exception;

	public int getLastSeatId();
	
	public void addSeat(List<Seat> seat);
}

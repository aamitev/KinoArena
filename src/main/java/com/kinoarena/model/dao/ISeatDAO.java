package com.kinoarena.model.dao;

import java.util.List;
import java.util.Map;

import com.kinoarena.model.vo.Seat;

public interface ISeatDAO {
	public static final String SQL_ADD_SEAT = "INSERT INTO seat VALUES(?, ?, ?, ?);";
	
	List<Seat> getAllResercedSeatsByScreeningID(int id) throws Exception;

	Map<Byte, List<Seat>> getAllSeadsByHall(int id) throws Exception;

	List<Seat> getAllReservedSeatsByScreeningID(int id) throws Exception;

	public int getLastSeatId();
	
	public void addSeat(List<Seat> seat);
}

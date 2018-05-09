package com.kinoarena.model.dao;

import java.util.List;
import java.util.Map;

import com.kinoarena.model.vo.Seat;

public interface ISeatDAO {

	Map<Byte, List<Seat>> getAllSeadsByHall(int id) throws Exception;

	List<Seat> getAllReservedSeatsByScreeningID(int id) throws Exception;

}

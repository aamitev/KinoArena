package com.kinoarena.model.dao;

import java.util.List;

import com.kinoarena.model.vo.Seat;

public interface ISeatDAO {

	List<Seat> getAllResercedSeatsByScreeningID(int id) throws Exception;

}

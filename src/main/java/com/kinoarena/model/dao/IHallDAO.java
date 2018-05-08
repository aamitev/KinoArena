package com.kinoarena.model.dao;

import java.util.List;

import com.kinoarena.model.vo.Hall;

public interface IHallDAO {
	public static final String SQL_GET_ALL_HALLS = "SELECT * FROM halls h JOIN cinema c ON (h.cinema_id = c.cinema_id) JOIN address a ON (c.address_id = a.address_id) ORDER BY c.name DESC, hallNumber";
	public static final String SQL_GET_HALL_BY_NAME = "SELECT * FROM halls h JOIN cinema c ON (h.cinema_id = c.cinema_id) JOIN address a ON (c.address_id = a.address_id) WHERE hallNumber = ? AND c.name = ?;";
	public List<Hall> getAllHalls();
	
	public Hall getHallByName(String hallName, String cinemaName);
}

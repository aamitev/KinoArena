package com.kinoarena.model.dao;

import java.util.Collection;

import com.kinoarena.model.vo.Cinema;

public interface ICinemaDAO {
	public Collection<Cinema> getAllCinemas() throws Exception;

	public Cinema getCinemaById(int id);

}

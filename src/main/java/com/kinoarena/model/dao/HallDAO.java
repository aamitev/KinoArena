package com.kinoarena.model.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.kinoarena.model.mappers.HallRowMapper;
import com.kinoarena.model.vo.Hall;

@Component
public class HallDAO implements IHallDAO {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private HallRowMapper hallMapper;
	
	@Override
	public List<Hall> getAllHalls() {
		
		return jdbcTemplate.query(SQL_GET_ALL_HALLS, hallMapper);
	}

	@Override
	public Hall getHallByName(String hallName, String cinemaName) {
		Hall hall = jdbcTemplate.queryForObject(SQL_GET_HALL_BY_NAME, new Object[] {hallName, cinemaName}, hallMapper);
		return hall;
	}

}

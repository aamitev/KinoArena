package com.kinoarena.model.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.kinoarena.model.vo.Cinema;

@Component
public class CinemaRowMapper implements RowMapper<Cinema> {
	@Autowired
	private AddressRowMapper addressMapper;

	@Override
	public Cinema mapRow(ResultSet rs, int rowNum) throws SQLException {
		Cinema cinema = null;
		try {
			cinema = new Cinema(rs.getString("name"), rs.getString("email"), rs.getString("gsm"),
					addressMapper.mapRow(rs, rowNum));

		} catch (Exception e) {
			throw new SQLException(e);
		}

		return cinema;
	}

}

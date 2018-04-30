package com.kinoarena.model.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.kinoarena.model.vo.City;

@Component
public class CityRowMapper implements RowMapper<City> {

	@Override
	public City mapRow(ResultSet rs, int rowNum) throws SQLException {
		City city = null;
		try {
			city = new City(rs.getInt("id"), rs.getString("city"));

		} catch (Exception e) {
			throw new SQLException(e);
		}

		return city;
	}

}

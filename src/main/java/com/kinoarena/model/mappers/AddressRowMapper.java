package com.kinoarena.model.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.kinoarena.model.vo.Address;

@Component
public class AddressRowMapper implements RowMapper<Address> {

	@Autowired
	private CityRowMapper cityMapper;

	@Override
	public Address mapRow(ResultSet rs, int rowNum) throws SQLException {
		Address address = null;
		try {
			address = new Address(rs.getString("address"), rs.getString("postCode"), cityMapper.mapRow(rs, rowNum));

		} catch (Exception e) {
			throw new SQLException(e);
		}

		return address;
	}

}

package com.kinoarena.model.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.kinoarena.model.mappers.AddressRowMapper;
import com.kinoarena.model.vo.Address;

@Component
public class AddressDao {
	private static final String GET_ADRESSES = "SELECT * FROM address a JOIN city c ON(a.city_id = c.id);";
	@Autowired
	private JdbcTemplate jdbcTemplate;
	@Autowired
	private AddressRowMapper AddressRowMapper;

	public List<Address> getAllAddresses() throws Exception {
		List<Address> addresses = jdbcTemplate.query(GET_ADRESSES, AddressRowMapper);
		return addresses;
	}

}

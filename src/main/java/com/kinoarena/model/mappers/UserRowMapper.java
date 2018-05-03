package com.kinoarena.model.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.kinoarena.model.vo.User;

@Component
public class UserRowMapper implements RowMapper<User> {

	@Autowired
	private AddressRowMapper addressMapper;
	
	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		User user = null;
		try {
			user = new User(rs.getInt("user_id"), rs.getString("email"), rs.getString("password"), rs.getString("firstName"), rs.getString("secondName"),
							rs.getString("lastName"), rs.getBoolean("isMale"), rs.getDate("birthday").toLocalDate(),
							rs.getString("gsm"), rs.getString("education"), rs.getString("job"), addressMapper.mapRow(rs, rowNum));
			return user;
		} catch (Exception e) {
			throw new SQLException(e);
		}

	}
	

}

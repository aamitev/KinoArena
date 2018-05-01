package com.kinoarena.model.dao;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.kinoarena.model.mappers.UserRowMapper;
import com.kinoarena.model.vo.User;

@Component
public class UserDAO implements IUserDAO{
	
	public static final String sqlStatement = "SELECT * FROM users WHERE username=? and password = sha1(?)";
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private UserRowMapper userMapper;
	//TODO: to be developed...
	@Override
	public User login(String email, String password) {
		User user = (User) jdbcTemplate.queryForObject("SELECT email, password FROM users where email = ? AND password = sha1(?);",
	            new Object[] { email, password }, userMapper);
	 
	        return user;
	}

	@Override
	public void register(String fisrtName, String secondName, String lastName, String email, String password,
			String repass, boolean isMale, LocalDate dateOfBirth) {
		
	}
}

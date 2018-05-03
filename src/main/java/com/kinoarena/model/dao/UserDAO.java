package com.kinoarena.model.dao;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.kinoarena.exceptions.WebProfileException;
import com.kinoarena.model.mappers.UserRowMapper;
import com.kinoarena.model.vo.User;

@Component
public class UserDAO implements IUserDAO {

	private static final String WRONG_PASSWORD = "Wrong password.";
	public static final String SQL_LOGIN_STATEMENT = "SELECT * FROM users u JOIN address a ON(u.address_id = a.id) WHERE u.email = ? AND u.password = sha1(?);";
	public static final String SQL_FIND_USER_WITH_PASS = "SELECT password FROM users WHERE password = sha1(?);";
	public static final String SQL_CHANGE_PASSWORD_STATEMENT = "UPDATE users SET password = sha1(?) WHERE email = '?';";

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	private UserRowMapper userMapper;

	// TODO: to be developed...

	@Override
	public User login(String email, String password) throws WebProfileException {
		try {
			User user = (User) jdbcTemplate.queryForObject(SQL_LOGIN_STATEMENT, new Object[] { email, password },
					userMapper);
			return user;
		} catch (Exception e) {
			throw new WebProfileException(WRONG_PASSWORD, e);
		}

	}

	@Override
	public void register(String fisrtName, String secondName, String lastName, String email, String password,
			String repass, boolean isMale, LocalDate dateOfBirth) {

	}

	@Override
	public void changePassword(User user, String oldPass, String newPass, String reNewPass) {
		
	}
}

package com.kinoarena.model.dao;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.kinoarena.exceptions.WebProfileException;
import com.kinoarena.model.mappers.UserRowMapper;
import com.kinoarena.model.vo.Address;
import com.kinoarena.model.vo.User;

@Component
public class UserDAO implements IUserDAO {

//	private static final String INVALID_OLD_PASSWORD = "Invalid old password.";
	private static final String WRONG_PASSWORD = "Wrong password.";
	public static final String SQL_LOGIN_STATEMENT = "SELECT * FROM users u JOIN address a ON(u.address_id = a.address_id) WHERE u.email = ? AND u.password = sha1(?);";
	public static final String SQL_CHANGE_PASSWORD_STATEMENT = "UPDATE users SET password = sha1(?) WHERE email = ?;";
	public static final String SQL_ADD_USER = "INSERT INTO users(user_id, email, password, firstName, secondName, lastName, isMale, birthday, address_id) VALUES(null, ?, sha1(?), ?, ?, ?, ?, ?, null);"; 
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	private UserRowMapper userMapper;

	// TODO: to be developed...

	@Override
	public User login(String email, String password) throws WebProfileException {
		try {
			System.out.println(password);
			User user = jdbcTemplate.queryForObject(SQL_LOGIN_STATEMENT, new Object[] { email, password }, userMapper);
			return user;
		} catch (Exception e) {
			throw new WebProfileException(WRONG_PASSWORD, e);
		}

	}

	@Override
	public void register(String firstName, String secondName, String lastName, String email, String password,
			boolean isMale, LocalDate dateOfBirth) {
		jdbcTemplate.update(SQL_ADD_USER, email, password, firstName, secondName, lastName, isMale, dateOfBirth.toString());
	}

	@Override
	public void changePassword(User user, String reNewPass) {
		jdbcTemplate.update("UPDATE users SET password = sha1(?) WHERE email = ?;",
							reNewPass,
							user.getEmail());
		System.out.println(user.getEmail());
		System.out.println("User password updated!");
	}

}

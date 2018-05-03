package com.kinoarena.model.dao;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.kinoarena.exceptions.ModelException;
import com.kinoarena.exceptions.WebProfileException;
import com.kinoarena.model.mappers.UserRowMapper;
import com.kinoarena.model.vo.User;
import com.kinoarena.utils.Utils;

@Component
public class UserDAO implements IUserDAO {

	private static final String INVALID_OLD_PASSWORD = "Invalid old password.";
	private static final String WRONG_PASSWORD = "Wrong password.";
	public static final String SQL_LOGIN_STATEMENT = "SELECT * FROM users u JOIN address a ON(u.address_id = a.id) WHERE u.email = ? AND u.password = sha1(?);";
	public static final String SQL_CHANGE_PASSWORD_STATEMENT = "UPDATE users SET password = sha1(?) WHERE email = ?;";

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	private UserRowMapper userMapper;

	// TODO: to be developed...

	@Override
	public User login(String email, String password) throws WebProfileException {
		try {
			User user = jdbcTemplate.queryForObject(SQL_LOGIN_STATEMENT, new Object[] { email, password }, userMapper);
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
	public User changePassword(User user, String email, String reNewPass) {
		jdbcTemplate.update("UPDATE users SET password = ? WHERE email = ?;",
				);
	        System.out.println("Person Updated!!");
	}

	@Override
	public User searchForUserWithPass(String email, String password) throws WebProfileException {
		try {

			System.out.println(user.getFirstName());
			return user;
		} catch (Exception e) {
			throw new WebProfileException(INVALID_OLD_PASSWORD, e);
		}

	}
}

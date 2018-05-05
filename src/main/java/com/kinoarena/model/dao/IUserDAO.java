package com.kinoarena.model.dao;

import java.time.LocalDate;

import com.kinoarena.exceptions.WebProfileException;
import com.kinoarena.model.vo.User;

public interface IUserDAO {
	
	public User login(String email, String password) throws WebProfileException;
	
	public void register(String fisrtName, String secondName, String lastName,
						 String email, String password,
						 boolean isMale, LocalDate dateOfBirth);
	
	public void changePassword(User user, String reNewPass);
	
	public void makeUserAdmin(String email);
}

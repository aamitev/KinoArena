package com.kinoarena.model.dao;

import java.time.LocalDate;

import com.kinoarena.dto.UserDTO;
import com.kinoarena.exceptions.WebProfileException;

public interface IUserDAO {
	
	public UserDTO login(String email, String password) throws WebProfileException;
	
	public void register(String fisrtName, String secondName, String lastName,
						 String email, String password,
						 boolean isMale, LocalDate dateOfBirth);
	
	public void changePassword(UserDTO user, String reNewPass);
	
	public void makeUserAdmin(String email);
	
	public void editUser(UserDTO user);
	
	public int getUserId(String email);
}

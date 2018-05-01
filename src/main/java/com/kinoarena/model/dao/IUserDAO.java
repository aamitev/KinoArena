package com.kinoarena.model.dao;

import java.time.LocalDate;

import com.kinoarena.model.vo.User;

public interface IUserDAO {
	
	public User login(String email, String password);
	
	public void register(String fisrtName, String secondName, String lastName,
						 String email, String password, String repass,
						 boolean isMale, LocalDate dateOfBirth);
}

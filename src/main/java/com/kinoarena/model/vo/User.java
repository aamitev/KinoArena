package com.kinoarena.model.vo;

import java.time.LocalDate;

import com.kinoarena.exceptions.ModelException;
import com.kinoarena.utils.Utils;

public class User {
	private static final String INVALID_JOB = "Invalid job entered";
	private static final String INVALID_EDUCATION = "Invalid education entered.";
	private static final String INVALID_GSM = "Invalid GSM entered.";
	private static final String INVALID_ADDRESS = "Invalid address.";
	private static final String INVALID_INPUT = "Invalid input.";
	private static final String INVALID_EMAIL_PATTERN = "Invalid email pattern.";
	private static final String INVALID_PASSWORD = "Invalid password.";
	private static final String INVALID_FIRST_NAME = "Invalid first name of user.";
	private static final String INVALID_SECOND_NAME = "Invalid second name of user.";
	private static final String INVALID_LAST_NAME = "Invalid last name of user.";
	
	private String email;
	private String password;
	private String firstName;
	private String secondName;
	private String lastName;
	private boolean isMale;
	private LocalDate birthday;
	private String gsm;
	private String education;
	private String job;
	private Address address;
	
	public User() {
		
	}
	
	public User(String email, String password, String firstName, String secondName, String lastName, boolean isMale,
			LocalDate birthday, String gsm, String education, String job, Address address) throws ModelException {
		this();
		setEmail(email);
		setPassword(password);
		setFirstName(firstName);
		setSecondName(secondName);
		setLastName(lastName);
		setSex(isMale);
		setGSM(gsm);
		setEducation(education);
		setJob(job);
		setAddress(address);
		
	}
	private void setGSM(String gsm) throws ModelException {
			if(Utils.gsmValidator(gsm)) {
				this.gsm = gsm;
			}else throw new ModelException(INVALID_GSM);
	}

	private void setAddress(Address address) throws ModelException {
		if(address != null) {
			this.address = address;
		}else throw new ModelException(INVALID_ADDRESS);
	}
	public Address getAddress() {
		return this.address;
	}

	private void setSex(boolean isMale) {
		this.isMale = isMale;
	}


	private void setLastName(String lastName) throws ModelException{
		if(Utils.checkString(lastName)) {
			this.lastName = lastName;
		}else throw new ModelException(INVALID_LAST_NAME);
	}


	private void setSecondName(String secondName) throws ModelException {
		if(Utils.checkString(secondName)) {
			this.secondName = secondName;
		}else throw new ModelException(INVALID_SECOND_NAME);		
	}


	private void setFirstName(String firstName) throws ModelException {
		if(Utils.checkString(firstName)) {
			this.firstName = firstName;
		}else throw new ModelException(INVALID_FIRST_NAME);		
	}


	private void setPassword(String password) throws ModelException {
		if(Utils.validatePassword(password)) {
			this.password = password;
		}else throw new ModelException(INVALID_PASSWORD);		
	}


	private void setEmail(String email) throws ModelException {
		if(Utils.checkString(email)) {
			if(Utils.emailValidator(email)) {
				this.email = email;
			}else throw new ModelException(INVALID_EMAIL_PATTERN);
		}else throw new ModelException(INVALID_INPUT);
	}
	public void setJob(String job) throws ModelException {
		if(Utils.checkString(job)) {
			this.job = job;
		}else throw new ModelException(INVALID_JOB);
	}

	public void setEducation(String education) throws ModelException {
		if(Utils.checkString(education)) {
			this.education = education;
		}else throw new ModelException(INVALID_EDUCATION);
	}

	public String getEmail() {
		return this.email;
	}


	public String getPassword() {
		return this.password;
	}


	public String getFirstName() {
		return this.firstName;
	}


	public String getSecondName() {
		return this.secondName;
	}


	public String getLastName() {
		return this.lastName;
	}


	public boolean isMale() {
		return this.isMale;
	}
	
	public LocalDate getBirthday() {
		return birthday;
	}
	
	
	public void setBirthday(LocalDate birthday) {
		this.birthday = birthday;
	}
	
	
	public String getGsm() {
		return gsm;
	}
	
	
	public String getEducation() {
		return education;
	}
	
	
	
	
	public String getJob() {
		return job;
	}
	
	


}
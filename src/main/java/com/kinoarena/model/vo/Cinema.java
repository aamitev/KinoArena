package com.kinoarena.model.vo;

import com.kinoarena.exceptions.ModelException;
import com.kinoarena.utils.Utils;

public class Cinema {
	private static final String INVALID_CINEMA_NAME = "Invalid cinema name.";
	private static final String ILLEGAL_EMAIL = "Illegal email entered.";
	private static final String INVALID_EMAIL_PATTERN = "Invalid email pattern.";
	private static final String INVALID_GSM = "Invalid gsm entered.";
	private static final String INVALID_ADDRESS = "Invalid address.";

	private String name;
	private String email;
	private String gsm;
	private Address address;

	public Cinema(String name, String email, String gsm, Address address) throws ModelException {
		setName(name);
		setEmail(email);
		setGSM(gsm);
		setAddress(address);
	}

	private void setAddress(Address address) throws ModelException {
		if (address != null) {

			this.address = address;
		} else
			throw new ModelException(INVALID_ADDRESS);
	}

	private void setGSM(String gsm) throws ModelException {
		if (Utils.gsmValidator(gsm)) {
			this.gsm = gsm;
		} else
			throw new ModelException(INVALID_GSM);
	}

	private void setEmail(String email) throws ModelException {
		if (Utils.checkString(email)) {
			if (Utils.emailValidator(email)) {
				this.email = email;
			} else
				throw new ModelException(INVALID_EMAIL_PATTERN);
		} else
			throw new ModelException(ILLEGAL_EMAIL);
	}

	private void setName(String name) throws ModelException {
		if (Utils.checkString(name)) {
			this.name = name;
		} else
			throw new ModelException(INVALID_CINEMA_NAME);
	}

	public String getName() {
		return this.name;
	}

	public String getEmail() {
		return this.email;
	}

	public String getGSM() {
		return this.gsm;
	}

	public Address getAddress() {
		return this.address;
	}
}

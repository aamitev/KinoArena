package com.kinoarena.model.vo;

import com.kinoarena.exceptions.ModelException;
import com.kinoarena.utils.Utils;

public class Address {
	private static final String INVALID_ADDRESS = "Invalid address entered.";
	private static final String INVALID_POSTCODE = "Invalid postcode entered.";
	private static final String INVALID_POSTCODE_LENGTH = "Invalid postcode length";
	private static final int MAX_POSTCODE_LENGTH = 4;
	private String address;
	private String postcode;
	private City city;

	public Address(String address, String postcode, City city) throws ModelException {
		setAddress(address);
		setPostcode(postcode);
		setCity(city);
	}

	private void setCity(City city) throws ModelException {
		if (city != null) {
			this.city = city;
		} else
			throw new ModelException("Invalid city");
	}

	private void setPostcode(String postcode) throws ModelException {
		if (Utils.checkString(postcode)) {
			if (postcode.length() == MAX_POSTCODE_LENGTH) {
				this.postcode = postcode;
			} else
				throw new ModelException(INVALID_POSTCODE_LENGTH);
		} else
			throw new ModelException(INVALID_POSTCODE);
	}

	private void setAddress(String address) throws ModelException {
		if (Utils.checkString(address)) {
			this.address = address;
		} else
			throw new ModelException(INVALID_ADDRESS);
	}

	public String getAddress() {
		return this.address;
	}

	public String getPostcode() {
		return this.postcode;
	}

	public City getCity() {
		return this.city;
	}

	@Override
	public String toString() {
		return "Address [address=" + address + ", postcode=" + postcode + ", city=" + city + "]";
	}

}

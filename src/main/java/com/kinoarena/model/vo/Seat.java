package com.kinoarena.model.vo;

import com.kinoarena.exceptions.ModelException;

public class Seat {
	private static final String INVALID_ROW_NUMBER = "Invalid row number.";
	private static final String INVALID_SEAT_NUMBER = "Invalid seat number.";
	private short number;
	private byte row;
	private boolean isTaken;
	
	public Seat(int number, int row) throws ModelException {
		setNumber(number);
		setRow(row);
		setOccupation(false);
	}
	
	
	private void setOccupation(boolean isTaken) {
		this.isTaken = isTaken;
	}


	private void setRow(int row) throws ModelException {
		if(row < Byte.MAX_VALUE) {
			this.row = (byte)row;
		}else throw new ModelException(INVALID_ROW_NUMBER);
	}


	private void setNumber(int number) throws ModelException {
		if(number < Short.MAX_VALUE) {
			this.number = (short)number;
		}else throw new ModelException(INVALID_SEAT_NUMBER);
	}
	
	public short getNumber() {
		return this.number;
	}
	
	public byte getRow() {
		return this.row;
	}
	
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + number;
		result = prime * result + row;
		return result;
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Seat other = (Seat) obj;
		if (number != other.number)
			return false;
		if (row != other.row)
			return false;
		return true;
	}


	public boolean getOccupation() {
		return this.isTaken;
	}
}

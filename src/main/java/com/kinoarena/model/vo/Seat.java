package com.kinoarena.model.vo;

import com.kinoarena.exceptions.ModelException;

public class Seat {
	private static final String INVALID_ROW_NUMBER = "Invalid row number.";
	private static final String INVALID_SEAT_NUMBER = "Invalid seat number.";
	private int id;
	private short number;
	private byte row;
	private boolean isTaken;
	private Hall hall;

	public Seat(int id, int row, int number, boolean isTaken, Hall hall) throws ModelException {
		setId(id);
		setNumber(number);
		setRow(row);
		setTaken(isTaken);
		setHall(hall);
	}

	private void setTaken(boolean isTaken) {
		this.isTaken = isTaken;
	}

	private void setRow(int row) throws ModelException {
		if (row < Byte.MAX_VALUE) {
			this.row = (byte) row;
		} else
			throw new ModelException(INVALID_ROW_NUMBER);
	}

	private void setNumber(int number) throws ModelException {
		if (number < Short.MAX_VALUE) {
			this.number = (short) number;
		} else
			throw new ModelException(INVALID_SEAT_NUMBER);
	}

	public short getNumber() {
		return this.number;
	}

	public byte getRow() {
		return this.row;
	}

	public boolean getOccupation() {
		return this.isTaken;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Hall getHall() {
		return hall;
	}

	public void setHall(Hall hall) {
		if (hall != null) {
			this.hall = hall;
		}
	}

	@Override
	public String toString() {
		return "Seat [id=" + id + ", number=" + number + ", row=" + row + ", isTaken=" + isTaken + ", hall=" + hall
				+ "]";
	}

}

package com.kinoarena.model.vo;

import com.kinoarena.exceptions.ModelException;

public class Hall {
	private static final String INVALID_NUMBER_OF_SEATS = "Invalid number of seats.";
	private static final String INVALID_CINEMA = "Invalid cinema.";
	private static final String INVALID_ID = "Invalid id.";
	private static final String INVALID_NAME = "Invalid name.";
	private int id;
	private String name;
	private int seats;
	private Cinema cinema;

	public Hall(int id, String name, int seats, Cinema cinema) throws ModelException {
		setId(id);
		setName(name);
		setSeats(seats);
		setCinema(cinema);
	}

	private void setId(int id) throws ModelException {
		if (id > 0) {
			this.id = id;
		} else
			throw new ModelException(INVALID_ID);
	}

	private void setName(String name) throws ModelException {
		if (name != null) {
			this.name = name;
		} else
			throw new ModelException(INVALID_NAME);
	}

	private void setCinema(Cinema cinema) throws ModelException {
		if (cinema != null) {
			this.cinema = cinema;
		} else
			throw new ModelException(INVALID_CINEMA);
	}

	private void setSeats(int seats) throws ModelException {
		if (seats > 0) {
			this.seats = seats;
		} else
			throw new ModelException(INVALID_NUMBER_OF_SEATS);
	}

	public int getId() {
		return this.id;
	}

	public String getName() {
		return this.name;
	}

	public Cinema getCinema() {
		return this.cinema;
	}

	public int getSeats() {
		return this.seats;
	}
}

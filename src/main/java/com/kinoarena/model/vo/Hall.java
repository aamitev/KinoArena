package com.kinoarena.model.vo;

import com.kinoarena.exceptions.ModelException;

public class Hall {
	private static final String INVALID_NUMBER_OF_SEATS = "Invalid number of seats.";
	private static final String INVALID_CINEMA = "Invalid cinema.";
	private int seats;
	private Cinema cinema;

	public Hall(int seats, Cinema cinema) throws ModelException {
		setSeats(seats);
		setCinema(cinema);
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

	public Cinema getCinema() {
		return this.cinema;
	}

	public int getSeats() {
		return this.seats;
	}
}

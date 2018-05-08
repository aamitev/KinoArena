package com.kinoarena.model.vo;

import com.kinoarena.exceptions.ModelException;

public class Ticket {
	private static final String CANNOT_SET_RESERVATION = "Cannot set reservation to user.";
	private static final String INVALID_MOVIE = "Invalid movie entered.";
	private static final String INVALID_SEAT = "Invalid seat entered.";
	private static final String SEAT_IS_TAKEN = "Seat is taken";
	private User reservedTo;
	private Movie movie;
	private Seat seat;
	private boolean isActive;
	private boolean isPaid;

	public Ticket(User reservedTo, Movie movie, Seat seat, boolean active, boolean paid) throws ModelException {
		setReservationTo(reservedTo);
		setMovie(movie);
		setSeat(seat);
		se
	}

	public void setSeat(Seat seat) throws ModelException {
		if (seat != null) {
			if (seat.getOccupation() != false) {
				this.seat = seat;
			} else
				throw new ModelException(SEAT_IS_TAKEN);
		} else
			throw new ModelException(INVALID_SEAT);
	}

	public void setMovie(Movie movie) throws ModelException {
		if (movie != null) {
			this.movie = movie;
		} else
			throw new ModelException(INVALID_MOVIE);
	}

	public void setReservationTo(User reservedTo) throws ModelException {
		if (reservedTo != null) {
			this.reservedTo = reservedTo;
		} else
			throw new ModelException(CANNOT_SET_RESERVATION);
	}

	public User getUserWithReservation() {
		return this.reservedTo;
	}

	public Movie getMovie() {
		return this.movie;
	}

	public Seat getSeat() {
		return this.seat;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public boolean isPaid() {
		return paid;
	}

	public void setPaid(boolean paid) {
		this.paid = paid;
	}
}

package com.kinoarena.model.vo;

import com.kinoarena.exceptions.ModelException;

public class Reservation {
	private static final String CANNOT_SET_RESERVATION = "Cannot set reservation to user.";
	private static final String INVALID_MOVIE = "Invalid movie entered.";
	private static final String INVALID_SEAT = "Invalid seat entered.";
	private static final String SEAT_IS_TAKEN = "Seat is taken";
	private User reservedTo;
	private Movie movie;
	private Seat seat;
	
	public Reservation(User reservedTo, Movie movie, Seat seat) throws ModelException {
		setReservationTo(reservedTo);
		setMovie(movie);
		setSeat(seat);
	}

	private void setSeat(Seat seat) throws ModelException {
		if(seat != null ) {
			if(seat.getOccupation() != false) {
				this.seat = seat;
			}else throw new ModelException(SEAT_IS_TAKEN);
		}else throw new ModelException(INVALID_SEAT);
	}

	private void setMovie(Movie movie) throws ModelException {
		if(movie != null) {
			this.movie = movie;
		}else throw new ModelException(INVALID_MOVIE);
	}

	private void setReservationTo(User reservedTo) throws ModelException {
		if(reservedTo != null) {
			this.reservedTo = reservedTo;
		}else throw new ModelException(CANNOT_SET_RESERVATION);
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
}

package com.kinoarena.model.vo;

import com.kinoarena.dto.UserDTO;
import com.kinoarena.exceptions.ModelException;

public class Ticket {
	private static final String CANNOT_SET_RESERVATION = "Cannot set reservation to user.";
	private static final String INVALID_MOVIE = "Invalid movie entered.";
	private static final String INVALID_SEAT = "Invalid seat entered.";
	private static final String SEAT_IS_TAKEN = "Seat is taken";
	private UserDTO user;
	private Screening screening;
	private Seat seat;
	private boolean isActive;
	private boolean isPaid;

	public Ticket(UserDTO user, Screening screening, Seat seat, boolean active, boolean paid) throws ModelException {
		setUser(user);
		setScreening(screening);
		setSeat(seat);
		setActive(active);
		setPaid(paid);
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

	public Seat getSeat() {
		return this.seat;
	}

	public boolean isActive() {
		return isActive;
	}

	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}

	public boolean isPaid() {
		return isPaid;
	}

	public void setPaid(boolean isPaid) {
		this.isPaid = isPaid;
	}

	public Screening getScreening() {
		return screening;
	}

	public void setScreening(Screening screening) {
		this.screening = screening;
	}

	public UserDTO getUser() {
		return user;
	}

	public void setUser(UserDTO user) {
		this.user = user;
	}

}

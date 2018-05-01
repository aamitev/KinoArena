package com.kinoarena.model.vo;

import java.util.Set;

import com.kinoarena.exceptions.ModelException;
import com.kinoarena.exceptions.MovieException;
import com.kinoarena.model.enums.HallType;

public class Hall {
	//private static final String INVALID_NUMBER_OF_SEATS = "Invalid number of seats.";
	private static final String INVALID_CINEMA = "Invalid cinema.";
	private static final String INVALID_ID = "Invalid id.";
	private static final String INVALID_NAME = "Invalid name.";
	private int id;
	private String name;
	private HallType halltype;
	private Set<Seat> seats;
	private Cinema cinema;

	public Hall(int id, String name, Cinema cinema) throws ModelException {
		setId(id);
		setName(name);
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

	public int getId() {
		return this.id;
	}

	public String getName() {
		return this.name;
	}

	public Cinema getCinema() {
		return this.cinema;
	}

	public HallType getHalltype() {
		return halltype;
	}

	public void setHalltype(HallType halltype) throws MovieException {
		if (halltype == null) {
			throw new MovieException("Invalid hallType");
		}
		this.halltype = halltype;
	}
	
}

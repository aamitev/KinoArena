package com.kinoarena.model.vo;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.kinoarena.exceptions.ModelException;
import com.kinoarena.exceptions.MovieException;
import com.kinoarena.model.dao.SeatDAO;
import com.kinoarena.model.enums.HallType;

public class Hall {
	// private static final String INVALID_NUMBER_OF_SEATS = "Invalid number of
	// seats.";
<<<<<<< HEAD
	@Autowired
	private SeatDAO seatDao;
=======
>>>>>>> 0732713bd14ea4f36a0fe9dd5758efd17737fdab
	private static final String INVALID_CINEMA = "Invalid cinema.";
	private static final String INVALID_ID = "Invalid id.";
	private static final String INVALID_NAME = "Invalid name.";
	private static final int MAX_SEATS = 100;
	private static final int MAX_SEATS_PER_ROW = 10;
	private int id;
	private String name;
	private HallType hallType;
	private List<Seat> seats;
	private Cinema cinema;
	private int hallNumber;

	public Hall(int id, String name, Cinema cinema) throws ModelException {
		setId(id);
		setName(name);
		setCinema(cinema);

		this.seats = new ArrayList<Seat>();
		int nextSeatID = seatDao.getLastSeatId() + 1;
		for(int index = 1, row = 1; index <= MAX_SEATS; index++) {
			seats.add(new Seat(nextSeatID++, row, index, false, this));
			if(index % MAX_SEATS_PER_ROW == 0) {
				row++;
			}
		}
		
	}

	public Hall(int id, int hallNumber) throws ModelException {
		setId(id);
		setHallNumber(hallNumber);
	}

	public void setHallNumber(int hallNumber) {
		this.hallNumber = hallNumber;
	}

	public int getHallNumber() {
		return this.hallNumber;
	}

	public void setId(int id) throws ModelException {
		if (id > 0) {
			this.id = id;
		} else
			throw new ModelException(INVALID_ID);
	}

	public void addSeat(Seat seat) {
		if (seat != null && !this.seats.contains(seat)) {
			this.seats.add(seat);
		}
	}

	public void setName(String name) throws ModelException {
		if (name != null) {
			this.name = name;
		} else
			throw new ModelException(INVALID_NAME);
	}

	public void setCinema(Cinema cinema) throws ModelException {
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

	public HallType getHallType() {
		return hallType;
	}

	public void setHallType(HallType halltype) throws MovieException {
		if (halltype == null) {
			throw new MovieException("Invalid hallType");
		}
		this.hallType = halltype;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((hallType == null) ? 0 : hallType.hashCode());
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
		Hall other = (Hall) obj;
		if (hallType != other.hallType)
			return false;
		return true;
	}

<<<<<<< HEAD
=======
	@Override
	public String toString() {
		return "Hall [id=" + id + ", name=" + name + ", hallType=" + hallType + ", seats=" + seats + ", cinema="
				+ cinema + "]";
	}

>>>>>>> 0732713bd14ea4f36a0fe9dd5758efd17737fdab
}

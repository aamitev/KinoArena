package com.kinoarena.model.vo;

import java.time.LocalDateTime;

public class Screening {
	private int id;
	private LocalDateTime startTime;
	private Movie movie;
	private Hall hall;

	public Screening() {
	}

	public Screening(int id, LocalDateTime startTime, Movie movie, Hall hall) {
		this.setId(id);
		this.setStartTime(startTime);
		this.setMovie(movie);
		this.setHall(hall);
	}

	int getId() {
		return id;
	}

	void setId(int id) {
		this.id = id;
	}

	LocalDateTime getStartTime() {
		return startTime;
	}

	void setStartTime(LocalDateTime startTime) {
		this.startTime = startTime;
	}

	Movie getMovie() {
		return movie;
	}

	void setMovie(Movie movie) {
		this.movie = movie;
	}

	Hall getHall() {
		return hall;
	}

	void setHall(Hall hall) {
		this.hall = hall;
	}

}

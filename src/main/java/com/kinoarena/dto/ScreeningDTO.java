package com.kinoarena.dto;

import java.time.LocalDateTime;

import com.kinoarena.model.vo.Movie;

public class ScreeningDTO {
	private int id;
	private LocalDateTime startTime;
	private int movieId;
	private int hallId;

	public ScreeningDTO(int id, LocalDateTime startTime, int movieId, int hallId) {
		this.setId(id);
		this.setStartTime(startTime);
		this.setMovieId(movieId);
		this.setHallId(hallId);
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

	int getHallId() {
		return hallId;
	}

	void setHallId(int hallId) {
		this.hallId = hallId;
	}

	public int getMovieId() {
		return movieId;
	}

	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}

}

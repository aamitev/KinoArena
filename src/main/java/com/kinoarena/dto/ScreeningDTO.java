package com.kinoarena.dto;

import java.time.LocalDateTime;

import com.kinoarena.model.vo.Movie;

public class ScreeningDTO {
	private int id;
	private LocalDateTime startTime;
	private Movie movie;
	private int hallId;


	public ScreeningDTO(int id, LocalDateTime startTime, Movie movie, int hallId) {
		this.setId( id);
		this.setStartTime(startTime);
		this.setMovie( movie) ;
		this.setHallId( hallId);
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
	int getHallId() {
		return hallId;
	}
	void setHallId(int hallId) {
		this.hallId = hallId;
	}
	
	
}

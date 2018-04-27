package com.kinoarena.model;

import java.time.LocalDate;

import com.kinoarena.exceptions.MovieException;

public class Movie {
	private String title;
	private String coverURL;
	private String description;
	private String director;
	private int duration;
	private int pgAge;
	private String genre;
	private LocalDate primiere;

	public Movie(String title, String director, int duration, LocalDate primiere) throws MovieException {
		this.setTitle(title);
		this.setDirector(director);
		this.setDuration(duration);
		this.setPrimiere(primiere);
	}

	public Movie(String title, String coverURL, String description, String director, int duration, int pgAge,
			String genre, LocalDate primiere) throws MovieException {
		this(title, director, duration, primiere);
		this.setCoverURL(coverURL);
		this.setDescription(description);
		this.setPgAge(pgAge);
		this.setGenre(genre);
	}

	String getTitle() {
		return title;
	}

	void setTitle(String title) throws MovieException {
		if(title == null) {
			throw new MovieException("Invalid title");
		}
		this.title = title;
	}

	String getCoverURL() {
		return coverURL;
	}

	void setCoverURL(String coverURL) {
		this.coverURL = coverURL;
	}

	String getDescription() {
		return description;
	}

	void setDescription(String description) {
		this.description = description;
	}

	String getDirector() {
		return director;
	}

	void setDirector(String director) throws MovieException {
		if(director == null) {
			throw new MovieException("Invalid director");
		}
		this.director = director;
	}

	int getDuration() {
		return duration;
	}

	void setDuration(int duration) throws MovieException {
		if(duration <= 0) {
			throw new MovieException("Invalid duration");
		}
		this.duration = duration;
	}

	int getPgAge() {
		return pgAge;
	}

	void setPgAge(int pgAge) {
		this.pgAge = pgAge;
	}

	String getGenre() {
		return genre;
	}

	void setGenre(String genre) {
		this.genre = genre;
	}

	LocalDate getPrimiere() {
		return primiere;
	}

	void setPrimiere(LocalDate primiere) throws MovieException {
		if(primiere == null) {
			throw new MovieException("Invalid primiere");
		}
		this.primiere = primiere;
	}

}

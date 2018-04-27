package com.kinoarena.model.vo;

import java.time.LocalDate;

import com.kinoarena.exceptions.MovieException;

public class Movie {
	private Integer id;
	private String title;
	private String coverURL;
	private String description;
	private String director;
	private int duration;
	private LocalDate primiere;
	private int pgAge;
	private Genre genre;
	

	public Movie(String title, String director, int duration, LocalDate primiere) throws MovieException {
		this.setTitle(title);
		this.setDirector(director);
		this.setDuration(duration);
		this.setPrimiere(primiere);
	}

	public Movie(String title, String coverURL, String description, String director, int duration, int pgAge,
			Genre genre, LocalDate primiere) throws MovieException {
		this(title, director, duration, primiere);
		this.setCoverURL(coverURL);
		this.setDescription(description);
		this.setPgAge(pgAge);
		this.setGenre(genre);
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) throws MovieException {
		if (title == null) {
			throw new MovieException("Invalid title");
		}
		this.title = title;
	}

	public String getCoverURL() {
		return coverURL;
	}

	public void setCoverURL(String coverURL) {
		this.coverURL = coverURL;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) throws MovieException {
		if (director == null) {
			throw new MovieException("Invalid director");
		}
		this.director = director;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) throws MovieException {
		if (duration <= 0) {
			throw new MovieException("Invalid duration");
		}
		this.duration = duration;
	}

	public int getPgAge() {
		return pgAge;
	}

	public void setPgAge(int pgAge) {
		this.pgAge = pgAge;
	}

	public Genre getGenre() {
		return genre;
	}

	public void setGenre(Genre genre) throws MovieException {
		if(genre == null) {
			throw new MovieException();
		}
		this.genre = genre;
	}

	public LocalDate getPrimiere() {
		return primiere;
	}

	public void setPrimiere(LocalDate primiere) throws MovieException {
		if (primiere == null) {
			throw new MovieException("Invalid primiere");
		}
		this.primiere = primiere;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

}

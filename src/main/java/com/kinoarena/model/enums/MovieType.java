package com.kinoarena.model.enums;

public enum MovieType {
	_2D("2D"), _3D("3D"), _4D("4D");

	private String value;

	private MovieType(String value) {
		this.value = value;
	}

	public String getValue() {
		return value;
	}
}

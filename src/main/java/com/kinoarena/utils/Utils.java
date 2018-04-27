package com.kinoarena.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class Utils {
	private static final String EMAIL_REGEX = "^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$";
	private static final int MIN_PASS_LENGTH = 5;
	private static final Pattern VALID_EMAIL_ADDRESS_REGEX = Pattern.compile(EMAIL_REGEX, Pattern.CASE_INSENSITIVE);
	private static final int GSM_WITHOUT_COUNTRY_CODE = 10;
	private static final int GSM_WITH_COUNTRY_CODE = 13;
	
	public static boolean emailValidator(String emailStr) {
		Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(emailStr);
		return matcher.find();
	}
	
	public static boolean gsmValidator(String gsm) {
		if(checkString(gsm)) {
			if(gsm.length() >= GSM_WITHOUT_COUNTRY_CODE || gsm.length() <= GSM_WITH_COUNTRY_CODE) {
				return true;
			}
		}
		return false;
	}
	
	public static boolean checkString(String text) {
		if (text != null && text.trim().length() > 0) {
			return true;
		}
		return false;
	}

	public static boolean validatePassword(String password) {
		if (checkString(password)) {
			if (password.length() >= MIN_PASS_LENGTH) {
				return true;
			}
		}
		return false;
	}
}

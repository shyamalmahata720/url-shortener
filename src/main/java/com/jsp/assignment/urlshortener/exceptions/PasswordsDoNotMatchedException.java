package com.jsp.assignment.urlshortener.exceptions;

public class PasswordsDoNotMatchedException extends Exception{
	private String message;
	
	public PasswordsDoNotMatchedException(String message) {
		this.message = message;
	}
	
	public String getMessage() {
		return this.message;
	}
	
}

package com.shivani.srk.model;

import java.util.Date;

public class DataClass {
	
	private String firstname;
	private String lastname;
	private String username;
	private String password;
	private String email;
	private String gender;
	private Date date;
	private String Contact;

	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		if(firstname == null || firstname.equals("")) {
			return;
		}
		this.firstname = firstname;
	}
	
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	
	public String getContact() {
		return Contact;
	}
	public void setContact(String contact) {
		Contact = contact;
	}
	@Override
	public String toString() {
		return "DataClass [firstname=" + firstname + ", lastname=" + lastname + ", username=" + username + ", password="
				+ password + ", email=" + email + ", gender=" + gender + ", date=" + date + ", Contact=" + Contact
				+ "]";
	}
		

}

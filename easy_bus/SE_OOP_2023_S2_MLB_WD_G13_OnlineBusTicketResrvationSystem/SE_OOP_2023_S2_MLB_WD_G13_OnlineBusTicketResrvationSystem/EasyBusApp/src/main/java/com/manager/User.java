package com.manager;

public class User {
	
	private int id;
	private String name;
	private String email;
	private String phone;
	private String city;
	private String district;
	private String username;
	private String password;
	
	public User(int id, String name, String email, String phone, String city, String district, String username, String password) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.city= city;
		this.district = district;
		this.username = username;
		this.password = password;
	}

	public int getId() {
		return id;
	}


	public String getName() {
		return name;
	}


	public String getEmail() {
		return email;
	}

	
	public String getPhone() {
		return phone;
	}
	
	public String getCity() {
		return city;
	}
	
	public String getDistrict() {
		return district;
	}


	public String getUsername() {
	    return username;
	}


	public String getPassword() {
		return password;
	}


}

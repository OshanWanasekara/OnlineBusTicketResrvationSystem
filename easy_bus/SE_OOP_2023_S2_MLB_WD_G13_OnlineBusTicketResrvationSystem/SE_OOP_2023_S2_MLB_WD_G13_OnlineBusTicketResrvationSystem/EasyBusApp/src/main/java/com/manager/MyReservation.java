package com.manager;

public class MyReservation {
	private String Reference_ID;
	private String User_name;
	private String Travel_name;
	private String Bus_type;
	private String Model;
	private String Bus_no;
	private String Date;
	private String Departure_location;
	private String Arrival_location;
	private String Departure_time;
	private String Arrival_time;
	private String Seat_no;
	public MyReservation(String reference_ID, String user_name, String travel_name, String bus_type, String model,
			String bus_no, String date, String departure_location, String arrival_location, String departure_time,
			String arrival_time, String seat_no) {
		
		this.Reference_ID= reference_ID;
		this.User_name = user_name;
		this.Travel_name = travel_name;
		this.Bus_type = bus_type;
		this.Model = model;
		this.Bus_no = bus_no;
		this.Date = date;
		this.Departure_location = departure_location;
		this.Arrival_location = arrival_location;
		this.Departure_time = departure_time;
		this.Arrival_time = arrival_time;
		this.Seat_no = seat_no;
		
	}
	public String getReference_ID() {
		return Reference_ID;
	}
	public String getUser_name() {
		return User_name;
	}
	public String getTravel_name() {
		return Travel_name;
	}
	public String getBus_type() {
		return Bus_type;
	}
	public String getModel() {
		return Model;
	}
	public String getBus_no() {
		return Bus_no;
	}
	public String getDate() {
		return Date;
	}
	public String getDeparture_location() {
		return Departure_location;
	}
	public String getArrival_location() {
		return Arrival_location;
	}
	public String getDeparture_time() {
		return Departure_time;
	}
	public String getArrival_time() {
		return Arrival_time;
	}
	public String getSeat_no() {
		return Seat_no;
	}
	
	
}

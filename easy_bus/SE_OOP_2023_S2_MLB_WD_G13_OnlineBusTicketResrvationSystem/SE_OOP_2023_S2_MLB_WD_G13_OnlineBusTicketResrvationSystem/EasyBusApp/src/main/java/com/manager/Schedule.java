package com.manager;



public class Schedule {
	
	private String scheduleID;
	private String departureLocation;
	private String arrivalLocation;
	private String departureDate;
	private String departureTime;
	private String arrivalDate;
	private String arrivalTime;
	private String busName;
	private String busType;
	private String routeNo;
	private String route;
	private String availableSeat;
	private String totalSeat;
	private String ticketPrice;
	public Schedule(String scheduleID, String departureLocation, String arrivalLocation, String departureDate,
			String departureTime, String arrivalDate, String arrivalTime, String busName, String busType,
			String routeNo, String route, String availableSeat, String totalSeat, String ticketPrice) {
		super();
		this.scheduleID = scheduleID;
		this.departureLocation = departureLocation;
		this.arrivalLocation = arrivalLocation;
		this.departureDate = departureDate;
		this.departureTime = departureTime;
		this.arrivalDate = arrivalDate;
		this.arrivalTime = arrivalTime;
		this.busName = busName;
		this.busType = busType;
		this.routeNo = routeNo;
		this.route = route;
		this.availableSeat = availableSeat;
		this.totalSeat = totalSeat;
		this.ticketPrice = ticketPrice;
	}
	public String getScheduleID() {
		return scheduleID;
	}
	
	public String getDepartureLocation() {
		return departureLocation;
	}
	
	public String getArrivalLocation() {
		return arrivalLocation;
	}
	
	public String getDepartureDate() {
		return departureDate;
	}
	
	public String getDepartureTime() {
		return departureTime;
	}
	
	public String getArrivalDate() {
		return arrivalDate;
	}
	
	public String getArrivalTime() {
		return arrivalTime;
	}
	
	public String getBusName() {
		return busName;
	}
	
	public String getBusType() {
		return busType;
	}
	
	public String getrouteNo() {
		return routeNo;
	}
	
	public String getroute() {
		return route;
	}
	
	public String getAvailableSeat() {
		return availableSeat;
	}
	
	public String getTotalSeat() {
		return totalSeat;
	}
	
	public String getTicketPrice() {
		return ticketPrice;
	}
	
	
	
	
	
	
	

}

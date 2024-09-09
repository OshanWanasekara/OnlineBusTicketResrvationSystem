 package com.manager;

public class Busdetails {
	private int BusNum;
    private String Bustype; 
    private String Busname; 
    private String Busmodel; 
    private String Drivername; 
    private String company; 
    private String Ownername;
	public Busdetails(int busNum, String bustype, String busname, String busmodel, String drivername, String company,
			String ownername) {
		
		this.BusNum = busNum;
		this.Bustype = bustype;
		this.Busname = busname;
		this.Busmodel = busmodel;
		this.Drivername = drivername;
		this.company = company;
		this.Ownername = ownername;
	}
	public int getBusNum() {
		return BusNum;
	}
	
	public String getBustype() {
		return Bustype;
	}
	public void setBustype(String bustype) {
		Bustype = bustype;
	}
	public String getBusname() {
		return Busname;
	}
	
	public String getBusmodel() {
		return Busmodel;
	}
	
	public String getDrivername() {
		return Drivername;
	}
	
	public String getCompany() {
		return company;
	}
	
	public String getOwnername() {
		return Ownername;
	}
	
	
    
	
}

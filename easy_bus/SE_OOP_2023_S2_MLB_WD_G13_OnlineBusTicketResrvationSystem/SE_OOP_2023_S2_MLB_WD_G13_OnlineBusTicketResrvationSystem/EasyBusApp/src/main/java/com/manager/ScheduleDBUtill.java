package com.manager;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ScheduleDBUtill {
	
	private static Connection CON=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	public static List<Schedule> validate(String departureLocation,String arrivalLocation,String departureDate){
		 
		 ArrayList<Schedule> scd=new ArrayList<>();
		 
		 try {
			 CON=DBConnect.getConnection();
			 stmt=CON.createStatement();
			 String sql="select * from scheduledetails where departureLocation='"+departureLocation+"'and arrivalLocation='"+arrivalLocation+"'and departureDate='"+departureDate+"'";
			 rs=stmt.executeQuery(sql);
			 
			 while(rs.next()) {
				 String scheduleID=rs.getString(1);
				 String dLocation=rs.getString(2);
				 String aLocation=rs.getString(3);
				 String dDate=rs.getString(4);
				 String departureTime=rs.getString(5);
				 String arrivalDate=rs.getString(6);
				 String arrivalTime=rs.getString(7);
				 String busName=rs.getString(8);
				 String busType=rs.getString(9);
				 String routeNo=rs.getString(10);
				 String route=rs.getString(11);
				 String availableSeat=rs.getString(12);
				 String totalSeat=rs.getString(13);
				 String ticketPrice=rs.getString(14);
				 
				 Schedule s=new Schedule(scheduleID,departureLocation,arrivalLocation,departureDate,departureTime,arrivalDate,arrivalTime,busName,busType,routeNo,route,availableSeat,totalSeat,ticketPrice);
				 scd.add(s);
			 }
			 
			 
			 
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
		 
		 
		return scd; 
	 }
	
	
	 public static boolean insertschedule(String scheduleID, String departureLocation,String arrivalLocation, String departureDate,String departureTime, String arrivalDate, 
			 String arrivalTime,String busName,String busType,String routeNo,String route,String availableSeat,String totalSeat,String ticketPrice) {
	    	
	    	boolean isSuccess = false;
	    	
	    	try {
	    		CON = DBConnect.getConnection();
	    		stmt = CON.createStatement();
	    	    String sql = "insert into scheduledetails values ('"+scheduleID+"','"+departureLocation+"','"+arrivalLocation+"','"+departureDate+"','"+departureTime+"','"+arrivalDate+"','"+arrivalTime+"','"+busName+"','"+busType+"','"+routeNo+"','"+route+"','"+availableSeat+"','"+totalSeat+"','"+ticketPrice+"')";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	 	
	    	return isSuccess;
	    }
	 
	 public static boolean updateschedule(String scheduleID, String departureLocation,String arrivalLocation, String departureDate,String departureTime, String arrivalDate, 
			 String arrivalTime,String busName,String busType,String routeNo,String route,String availableSeat,String totalSeat,String ticketPrice) {
	    	
	    	boolean isSuccess = false;
	    	
	    	try {
	    		CON = DBConnect.getConnection();
	    		stmt = CON.createStatement();
	    	    String sql = " update scheduledetails set scheduleID='"+scheduleID+"', departureLocation='"+departureLocation+"',arrivalLocation='"+arrivalLocation+"',departureDate='"+departureDate+"',departureTime='"+departureTime+"',arrivalDate='"+arrivalDate+"',arrivalTime='"+arrivalTime+"',busName='"+busName+"',busType='"+busType+"',routeNo='"+routeNo+"',route='"+route+"',availableSeat='"+availableSeat+"',totalSeat='"+totalSeat+"',ticketPrice='"+ticketPrice+"'" +"where scheduleID='"+scheduleID+"'";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	 	
	    	return isSuccess;
	    }
	 
	 
	 public static List<Schedule> getScheduleDetails(){
		 
		 ArrayList<Schedule> scd=new ArrayList<>();
		 
		 try {
			 CON=DBConnect.getConnection();
			 stmt=CON.createStatement();
			 String sql="select * from scheduledetails";
			 rs=stmt.executeQuery(sql);
			 
			 while(rs.next()) {
				 String scheduleID=rs.getString(1);
				 String departureLocation=rs.getString(2);
				 String arrivalLocation=rs.getString(3);
				 String departureDate=rs.getString(4);
				 String departureTime=rs.getString(5);
				 String arrivalDate=rs.getString(6);
				 String arrivalTime=rs.getString(7);
				 String busName=rs.getString(8);
				 String busType=rs.getString(9);
				 String routeNo=rs.getString(10);
				 String route=rs.getString(11);
				 String availableSeat=rs.getString(12);
				 String totalSeat=rs.getString(13);
				 String ticketPrice=rs.getString(14);
				 
				 Schedule s=new Schedule(scheduleID,departureLocation,arrivalLocation,departureDate,departureTime,arrivalDate,arrivalTime,busName,busType,routeNo,route,availableSeat,totalSeat,ticketPrice);
				 scd.add(s);
			 }
			   
			 
			 
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
		 
		 
		return scd; 
	 }
	
	
	 public static boolean deleteschedule(String scheduleID) {
	    	
	    	boolean isSuccess = false;
	    	
	    	try {
	    		CON = DBConnect.getConnection();
	    		stmt = CON.createStatement();
	    	    String sql = "delete from scheduledetails where scheduleID='"+scheduleID+"'";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	 	
	    	return isSuccess;
	    }
	 
}	


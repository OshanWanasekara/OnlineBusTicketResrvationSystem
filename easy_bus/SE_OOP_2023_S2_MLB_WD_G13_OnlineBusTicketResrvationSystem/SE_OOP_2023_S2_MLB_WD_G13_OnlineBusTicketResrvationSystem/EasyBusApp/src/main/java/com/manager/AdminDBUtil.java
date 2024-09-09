package com.manager;

import java.sql.Connection;

import java.sql.ResultSet;

import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AdminDBUtil {
	
	private static boolean isSuccess;
	private static Connection CON = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	


public static List<User> getUserDetails(String Id){
	
	int convertedID = Integer.parseInt(Id);
	ArrayList<User> us = new ArrayList<>();
	try {
		CON= DBConnect.getConnection();
	    stmt = CON.createStatement();
	    String sql = "select * from customer where id='"+convertedID+"'";
		rs=stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String email = rs.getString(3);
			String phone = rs.getString(4);
			String city = rs.getString(5);
			String district = rs.getString(6);
			String username = rs.getString(7);
			String password = rs.getString(8);
			
			User u = new User(id,name,email,phone,city,district,username,password);
			us.add(u);
			
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return us;
}

public static boolean addUsers(String name, String email, String phone, String city,String district, String userName, String password) {
	
	boolean isSuccess = false;
	
	
	try{

		CON= DBConnect.getConnection();
		stmt = CON.createStatement();
		
		String sql = "insert into customer values(0,'"+name+"','"+email+"','"+phone+"','"+city+"','"+district+"','"+userName+"','"+password+"')";
		int rs = stmt.executeUpdate(sql);
		
		if(rs>0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
	
}


public static boolean viewupdate(String id, String name, String email, String phone, String city,String district,String username, String password) {
	try {
	
	    CON= DBConnect.getConnection();
	    stmt = CON.createStatement();
	
	    String sql = "update customer set name='"+name+"',email='"+email+"',phone='"+phone+"',city='"+city+"',district='"+district+"',username='"+username+"',password='"+password+"'"
			+"where id='"+id+"'";
	    int rs = stmt.executeUpdate(sql);
	    
	    if(rs>0) {
	    	isSuccess = true;
	    }
	    else {
	    	isSuccess = false;
	    }
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return isSuccess;
}

public static boolean viewdelete(String id) {
	int convId = Integer.parseInt(id);
	try {
		CON= DBConnect.getConnection();
	    stmt = CON.createStatement();
	    String sql = "delete from customer where id='"+convId+"'";
	    int r = stmt.executeUpdate(sql);
	    
	    if(r>0) {
	    	isSuccess = true;
	    	
	    }
	    else {
	    	isSuccess = false;
	    }
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return isSuccess;
}
}


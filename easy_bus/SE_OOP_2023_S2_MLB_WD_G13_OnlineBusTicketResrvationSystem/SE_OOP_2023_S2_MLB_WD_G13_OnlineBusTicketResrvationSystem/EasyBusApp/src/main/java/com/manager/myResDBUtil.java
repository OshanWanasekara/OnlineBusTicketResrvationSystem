package com.manager;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;





public class myResDBUtil {
	
	private static boolean isSuccess;
	private static Connection CON = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validateReservation(String referenceId,String username) {
		
		try {
			CON = DBConnect.getConnection();
	    	stmt = CON.createStatement();
			String sql = "select * from reservation_details where Reference_ID='"+referenceId+"' and User_name='"+username+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
	public static List<MyReservation> validate(String referenceId,String username){
		
	ArrayList<MyReservation> myresDetails=new ArrayList<>(); 
		
	    //validate
	    
	    try {	    	
	    	CON = DBConnect.getConnection();
	    	stmt = CON.createStatement();
	    	String sql = "select * from reservation_details where Reference_ID='"+referenceId+"' and User_name='"+username+"'";	
	    	rs = stmt.executeQuery(sql);
	    	
	    	while(rs.next()) {
	    		String ref_id = rs.getString(1);
	    		String uname = rs.getString(2);
	    		String tname = rs.getString(3);
	    		String btype = rs.getString(4);
	    		String model = rs.getString(5);
	    		String bno = rs.getString(6);
	    		String date = rs.getString(7);
	    		String dlocation = rs.getString(8);
	    		String alocation = rs.getString(9);
	    		String dtime = rs.getString(10);
	    		String atime = rs.getString(11);
	    		String sno = rs.getString(12);
	    		
	    		MyReservation ms = new MyReservation(ref_id,uname,tname,btype,model,bno,date,dlocation,alocation,dtime,atime,sno);
	    		myresDetails.add(ms);
	    	}
	    }
	    
	   catch(Exception e){
		   e.printStackTrace();
	   }
	      
	    return myresDetails; 
	}
	
	public static boolean insertreservation(String ref_id,String user_name,String travel_name,String bus_type,String model,String bus_no,String date,String dep_location,String arr_location,String dep_time,String arr_time,String seat_no) {
		
		boolean isSuccess = false;
	
	    try {
            CON = DBConnect.getConnection();
            stmt = CON.createStatement();
	    	String sql = "insert into reservation_details values ('"+ref_id+"','"+user_name+"','"+travel_name+"','"+bus_type+"','"+model+"','"+bus_no+"','"+date+"','"+dep_location+"','"+arr_location+"','"+dep_time+"','"+arr_time+"','"+seat_no+"')";
	    	int rs = stmt.executeUpdate(sql);
	    	
	    	if(rs>0) {
	    		isSuccess=true;
	    	}else {
	    		isSuccess=false;
	    	}
	    }
	    
	    catch(Exception e) {
	    	e.printStackTrace();
	    }
		
		return isSuccess;
	}
	
	public static boolean updatereservation(String ref_id, String user_name, String travel_name, String bus_type, String model, String bus_no, String date, String dep_location, String arr_location, String dep_time, String arr_time, String seat_no) {
	    try {
	        CON = DBConnect.getConnection();
	        stmt = CON.createStatement();
	        String sql = "UPDATE reservation_details SET User_name='" + user_name + "', Travel_name='" + travel_name + "', Bus_type='" + bus_type + "', Model='" + model + "', Bus_no='" + bus_no + "', Date='" + date + "', Departure_location='" + dep_location + "', Arrival_location='" + arr_location + "', Departure_time='" + dep_time + "', Arrival_time='" + arr_time + "', Seat_no='" + seat_no + "' WHERE Reference_ID='" + ref_id + "'";
	        int rs = stmt.executeUpdate(sql);

	        if (rs > 0) {
	            isSuccess = true;
	        } else {
	            isSuccess = false;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return isSuccess;
	}
	
	
    public static List<MyReservation> getReservationDetails(String referenceid){
    	ArrayList<MyReservation> ResDetails = new ArrayList<>();
    	
    	try {
    		
    		 CON = DBConnect.getConnection();
             stmt = CON.createStatement();
             String sql = "select * from reservation_details where Reference_ID='"+referenceid+"'";
             rs = stmt.executeQuery(sql);
             
             while(rs.next()) {
            	String ref_id = rs.getString(1);
            	String uname = rs.getString(2);
 	    		String tname = rs.getString(3);
 	    		String btype = rs.getString(4);
 	    		String model = rs.getString(5);
 	    		String bno = rs.getString(6);
 	    		String date = rs.getString(7);
 	    		String dlocation = rs.getString(8);
 	    		String alocation = rs.getString(9);
 	    		String dtime = rs.getString(10);
 	    		String atime = rs.getString(11);
 	    		String sno = rs.getString(12);
 	    		
 	    		MyReservation r = new MyReservation(ref_id,uname,tname,btype,model,bno,date,dlocation,alocation,dtime,atime,sno);
 	    		ResDetails.add(r);
             }
    	}
    	catch(Exception e){
    		e.printStackTrace();
    	}
    	return ResDetails;
    }
    
   public static boolean deletereservation (String ref_id) {
	   
	   try {
		   
		   CON = DBConnect.getConnection();
           stmt = CON.createStatement();
           String sql = "delete from reservation_details where Reference_ID='"+ref_id+"'";
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
}

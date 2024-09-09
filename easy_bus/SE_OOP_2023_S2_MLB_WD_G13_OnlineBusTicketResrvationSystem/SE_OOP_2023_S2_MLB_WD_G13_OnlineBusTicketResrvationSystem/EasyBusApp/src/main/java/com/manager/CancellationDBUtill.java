package com.manager;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class CancellationDBUtill {
	
	private static Connection CON = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static boolean insertCancellation(String user_name,String ref_id,String email,String reason,String details ) {
		boolean isSuccess = false;
		

	    try {
            CON = DBConnect.getConnection();
            stmt = CON.createStatement();
	    	String sql = "insert into cancellation values (0,'"+user_name+"','"+ref_id+"','"+email+"','"+reason+"','"+details+"')";
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

}

package com.manager;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class AddingbusdetailsDButil {
	
	
	private static boolean isSuccess;
	private static Connection CON = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	   
	   
	   
	    public static boolean  insertbus(String bustype,String busname,String busmodel,String drivername,String company,String ownername) {
	        
           boolean isSuccess = false;
           
          
           
         
	         
	    	try {
	    		CON = DBConnect.getConnection();
		    	stmt = CON.createStatement();
	    		Statement stmt = CON.createStatement();
	    		String sql ="insert into bus values(0,'"+bustype+"','"+busname+"','"+busmodel+"','"+drivername+"','"+company+"','"+ownername+"')";
	    		int rs =stmt.executeUpdate(sql);
	    		
	    		
	    		

	    		if(rs > 0) {
	    			isSuccess =true;
	    		}else {
	    			isSuccess = false;
	    		}
	    	}
	    	catch (Exception e) {
	      
	    		e.printStackTrace();
	    		
	    	 }
	    		return isSuccess;
	    	
	    }
	    
	    public static boolean  UpdateBus(String busNum,String bustype,String busname,String busmodel,String drivername,String company,String ownername) {
	    	
	    	boolean isSuccess = false;
	    	
	    	
            
            int convBusNum = Integer.parseInt(busNum); 
	    	try {
	    		
	    		CON = DBConnect.getConnection();
		    	stmt = CON.createStatement();
	    
				String sql ="update bus set Bustype='"+bustype+"',Busname='"+busname+"',Busmodel='"+busmodel+"',Drivername='"+drivername+"',company='"+company+"',Ownername='"+ownername+"'"+ " where BusNum='"+busNum+"'";
	    		int rs =stmt.executeUpdate(sql);
	    		
	    		
	    		

	    		if(rs > 0) {
	    			isSuccess =true;
	    		}else {
	    			isSuccess = false;
	    		}
	    	}
	    	catch (Exception e) {
	      
	    		e.printStackTrace();
	    		
	    	 }
	    		return isSuccess;
}
  public static boolean  DeleteBus(String busNum) {
	    	int convBusNum = Integer.parseInt(busNum);
	    	boolean isSuccess = false;
	    	
	    	try {
	    		
	    		CON = DBConnect.getConnection();
		    	stmt = CON.createStatement();
	    	
				String sql ="delete from bus where BusNum='"+convBusNum+"'";
	    		int r =stmt.executeUpdate(sql);
	    		
	    		
	    		

	    		if(r > 0) {
	    			isSuccess =true;
	    		}else {
	    			isSuccess = false;
	    		}
	    	}
	    	catch (Exception e) {
	      
	    		e.printStackTrace();
	    		
	    	 }
	    		return isSuccess;
	    
	    
	    
  }
  
}
	    
	   

	    



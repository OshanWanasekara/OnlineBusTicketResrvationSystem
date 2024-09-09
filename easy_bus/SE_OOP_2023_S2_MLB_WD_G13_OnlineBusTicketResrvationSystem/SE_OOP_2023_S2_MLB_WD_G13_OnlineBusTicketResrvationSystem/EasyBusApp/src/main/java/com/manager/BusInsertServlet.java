package com.manager;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BusInsertServlet")
public class BusInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bustype = request.getParameter("bustype");
		String busname = request.getParameter("busname");
		String busmodel= request.getParameter("busmodel");
		String drivername= request.getParameter("drivername");
		String company = request.getParameter("company");
		String ownername = request.getParameter("ownername");
		
		boolean isTrue;
		
		isTrue =AddingbusdetailsDButil.insertbus(bustype, busname, busmodel, drivername, company, ownername);
	   if(isTrue == true) {
		   RequestDispatcher dis1 = request.getRequestDispatcher("Busaccount.jsp");;
		   dis1.forward(request, response);
	   }else {;
		   RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccessful.jsp");
		   dis2.forward(request, response);
	   }
		   
	}

}

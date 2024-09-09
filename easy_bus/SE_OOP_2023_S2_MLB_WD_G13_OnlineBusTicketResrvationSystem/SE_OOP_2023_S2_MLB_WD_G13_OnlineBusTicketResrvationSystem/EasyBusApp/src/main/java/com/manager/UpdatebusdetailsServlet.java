package com.manager;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdatebusdetailsServlet")
public class UpdatebusdetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UpdatebusdetailsServlet() {
        super();
        
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String busNum =request.getParameter("busNum");
         String bustype =request.getParameter("bustype");
         String busname =request.getParameter("busname");
         String busmodel =request.getParameter("busmodel");
         String drivername =request.getParameter("drivername");
         String company =request.getParameter("company");
         String ownername =request.getParameter("ownername");
         
         
         boolean isTrue;
         
         isTrue =AddingbusdetailsDButil.UpdateBus(busNum,bustype,busname,busmodel,drivername,company,ownername);
         
         if(isTrue == true) {
        	 RequestDispatcher dis3 = request.getRequestDispatcher("Busaccount.jsp");
  		   dis3.forward(request, response);
         }
         else {
  		   RequestDispatcher dis4 = request.getRequestDispatcher("Unsuccessful.jsp");
  		   dis4.forward(request, response);
  	   }
		
	}

}

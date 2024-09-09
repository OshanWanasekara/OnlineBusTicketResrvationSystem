package com.manager;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteBusAccountServlet")
public class DeleteBusAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	 

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String busNum =request.getParameter("busNum");
	   boolean isTrue;
	   
	   isTrue =AddingbusdetailsDButil.DeleteBus(busNum);
	   
	   if (isTrue == true) {
		   
		   RequestDispatcher dispatcher = request.getRequestDispatcher("Busaccount.jsp");
		   dispatcher.forward(request, response);
	   }
	   else {
		   RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccessful.jsp");
		   dis2.forward(request, response);
	   }
	}

}

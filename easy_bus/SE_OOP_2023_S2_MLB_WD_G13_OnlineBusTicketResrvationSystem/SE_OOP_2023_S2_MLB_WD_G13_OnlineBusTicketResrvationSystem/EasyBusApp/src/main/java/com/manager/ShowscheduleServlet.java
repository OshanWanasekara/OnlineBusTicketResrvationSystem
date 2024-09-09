package com.manager;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ShowscheduleServlet")
public class ShowscheduleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String departureLocation=request.getParameter("departureLocation");
		String arrivalLocation=request.getParameter("arrivalLocation");
		String departureDate=request.getParameter("departureDate");
		
		try {
			List<Schedule> scdDetails=ScheduleDBUtill.validate(departureLocation, arrivalLocation, departureDate);
			request.setAttribute("scdDetails", scdDetails);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		RequestDispatcher dis1=request.getRequestDispatcher("Customerschedule.jsp");
		dis1.forward(request, response);
		   
	}

}

package com.manager;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateScheduleServlet")
public class UpdateScheduleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String scheduleID=request.getParameter("scheduleID");
		String departureLocation=request.getParameter("departureLocation");
		String arrivalLocation=request.getParameter("arrivalLocation");
		String departureDate=request.getParameter("departureDate");
		String departureTime=request.getParameter("departureTime");
		String arrivalDate=request.getParameter("arrivalDate");
		String arrivalTime=request.getParameter("arrivalTime");
		String busName=request.getParameter("busName");
		String busType=request.getParameter("busType");
		String routeNo=request.getParameter("routeNo");
		String route=request.getParameter("route");
		String availableSeat=request.getParameter("availableSeat");
		String totalSeat=request.getParameter("totalSeat");
		String ticketPrice=request.getParameter("ticketPrice");
		
        boolean isTrue;
		
		isTrue=ScheduleDBUtill.updateschedule(scheduleID, departureLocation, arrivalLocation, departureDate, departureTime, arrivalDate, arrivalTime, busName, busType, routeNo, route, availableSeat, totalSeat, ticketPrice);
		
		if(isTrue==true) {
			
			RequestDispatcher dis3=request.getRequestDispatcher("ScheduleList.jsp");;
			dis3.forward(request, response);
		}else {
			RequestDispatcher dis4=request.getRequestDispatcher("Unsuccess.jsp");
			dis4.forward(request, response);
		}
	}

}

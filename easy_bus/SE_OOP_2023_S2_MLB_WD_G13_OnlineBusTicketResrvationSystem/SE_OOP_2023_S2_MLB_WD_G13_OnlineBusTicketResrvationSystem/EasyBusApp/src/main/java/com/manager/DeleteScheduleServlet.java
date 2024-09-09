package com.manager;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/DeleteScheduleServlet")
public class DeleteScheduleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String scheduleID=request.getParameter("scheduleID");
		boolean isTrue;
		
		isTrue=ScheduleDBUtill.deleteschedule(scheduleID);
		
		if(isTrue==true) {
			RequestDispatcher dis5=request.getRequestDispatcher("ScheduleList.jsp");
			dis5.forward(request, response);
		}else {
			RequestDispatcher dis6=request.getRequestDispatcher("ScheduleList.jsp");
			dis6.forward(request, response);
			
		}
	}

}

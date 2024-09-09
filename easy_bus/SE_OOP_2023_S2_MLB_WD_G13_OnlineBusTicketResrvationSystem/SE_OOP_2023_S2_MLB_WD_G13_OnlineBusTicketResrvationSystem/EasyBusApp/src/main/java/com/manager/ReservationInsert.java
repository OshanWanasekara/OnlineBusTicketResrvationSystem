package com.manager;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ReservationInsert")
public class ReservationInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ref_id = request.getParameter("ref_id");
		String user_name = request.getParameter("uname");
		String travel_name = request.getParameter("tname");
		String bus_type = request.getParameter("btype");
	    String model = request.getParameter("model");
		String bus_no = request.getParameter("bno");
		String date = request.getParameter("date");
		String dep_location = request.getParameter("dloc");
		String arr_location = request.getParameter("aloc");
		String dep_time = request.getParameter("dtime");
		String arr_time = request.getParameter("atime");
		String seat_no = request.getParameter("sno");
		
		boolean isTrue;     
		
		isTrue = myResDBUtil.insertreservation(ref_id, user_name, travel_name, bus_type, model, bus_no, date, dep_location, arr_location, dep_time, arr_time, seat_no);
		
		if(isTrue == true) {
			List<MyReservation> resDetails = myResDBUtil.getReservationDetails(ref_id);
			request.setAttribute("myresDetails", resDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("AdminReservationView.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("ResUnsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}

package com.manager;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteReservationServlet")
public class DeleteReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String ref_id = request.getParameter("ref_id");
		boolean isTrue;
		
		isTrue = myResDBUtil.deletereservation(ref_id);
		
		if(isTrue == true) {
			List<MyReservation> resDetails = myResDBUtil.getReservationDetails(ref_id);
			request.setAttribute("myresDetails", resDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("AdminReservationView.jsp");
			dis.forward(request, response);
		}
		else {
			List<MyReservation> resDetails = myResDBUtil.getReservationDetails(ref_id);
			request.setAttribute("myresDetails",resDetails );
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("ResUnsuccess.jsp");
			dispatcher.forward(request, response);
		}
	}

}

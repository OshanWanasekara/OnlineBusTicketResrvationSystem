package com.manager;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class viewDeleteServlet
 */
@WebServlet("/viewDeleteServlet")
public class viewDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("id");
		boolean isTrue;
		
		isTrue = AdminDBUtil.viewdelete(id);
		
		if(isTrue==true) {
			RequestDispatcher disp = request.getRequestDispatcher("viewrecords.jsp");
			disp.forward(request, response);
		}
		else {
			List<User> usDetails = AdminDBUtil.getUserDetails(id);
			request.setAttribute("usDetails", usDetails);
			
			RequestDispatcher disp = request.getRequestDispatcher("viewrecords.jsp");
			disp.forward(request, response);
			
		}
	}

}

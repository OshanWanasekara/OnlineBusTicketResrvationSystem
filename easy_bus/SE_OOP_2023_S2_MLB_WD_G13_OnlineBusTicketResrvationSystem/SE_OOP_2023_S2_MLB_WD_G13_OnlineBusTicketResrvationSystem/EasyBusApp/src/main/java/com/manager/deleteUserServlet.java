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
 * Servlet implementation class DeleteCustomerServlet
 */
@WebServlet("/deleteUserServlet")
public class deleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("usid");
		boolean isTrue;
		
		isTrue = userDBUtil.deleteuser(id);
		
		if(isTrue==true) {
			RequestDispatcher disp = request.getRequestDispatcher("insertUser.jsp");
			disp.forward(request, response);
		}
		else {
			List<User> usDetails = userDBUtil.getUserDetails(id);
			request.setAttribute("usDetails", usDetails);
			
			RequestDispatcher disp = request.getRequestDispatcher("viewUserProfile.jsp");
			disp.forward(request, response);
			
		}
		
	}

}

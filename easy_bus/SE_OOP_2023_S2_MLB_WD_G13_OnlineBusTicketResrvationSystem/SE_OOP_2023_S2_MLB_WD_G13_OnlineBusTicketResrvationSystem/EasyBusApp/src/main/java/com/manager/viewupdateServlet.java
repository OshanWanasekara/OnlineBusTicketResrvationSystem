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
 * Servlet implementation class viewupdateServlet
 */
@WebServlet("/viewupdateServlet")
public class viewupdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String city = request.getParameter("city");
		String district = request.getParameter("district");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = AdminDBUtil.viewupdate(id,name,email,phone,city,district,username,password);
		
		if(isTrue==true) {
			
			List<User> usDetails = AdminDBUtil.getUserDetails(id);
			request.setAttribute("usDetails", usDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("viewrecords.jsp");
			dis.forward(request, response);
		}
		else {

			List<User> usDetails = AdminDBUtil.getUserDetails(id);
			request.setAttribute("usDetails", usDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("viewrecords.jsp");
			dis.forward(request, response);
		}
	}

}

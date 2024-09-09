package com.manager;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addUsersServlet")
public class addUsersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String city = request.getParameter("city");
		String district = request.getParameter("district");	
		String username = request.getParameter("uid");
		String password = request.getParameter("psw");
		
		boolean isTrue;
	
		isTrue=AdminDBUtil.addUsers(name, email, phone, city, district, username, password);
		
		if(isTrue==true) {
			RequestDispatcher dis1 = request.getRequestDispatcher("viewrecords.jsp");
			dis1.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("addUsers.jsp");
			dis2.forward(request, response);

		}
	}
	
	
	

}

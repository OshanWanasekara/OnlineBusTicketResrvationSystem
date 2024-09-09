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
 * Servlet implementation class updateUserServlet
 */
@WebServlet("/updateUserServlet")
public class updateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("cusid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String city = request.getParameter("city");
		String district = request.getParameter("district");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = userDBUtil.updateuser(id,name,email,phone,city,district,username,password);
		
		if(isTrue==true) {
			
			List<User> usDetails = userDBUtil.getUserDetails(id);
			request.setAttribute("usDetails", usDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("viewUserProfile.jsp");
			dis.forward(request, response);
		}
		else {

			List<User> usDetails = userDBUtil.getUserDetails(id);
			request.setAttribute("usDetails", usDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("viewUserProfile.jsp");
			dis.forward(request, response);
		}
		
	}

}

 package com.manager;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/MyResServlet")
public class MyResServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	PrintWriter out = response.getWriter();	
	response.setContentType("text/html");
		
	String RefId = request.getParameter("ref_id");
	String UserName = request.getParameter("uname");
	boolean isTrue;
	
	isTrue = myResDBUtil.validateReservation(RefId, UserName);
	
	if (isTrue == true) {
		List<MyReservation>myresDetails = myResDBUtil.validate(RefId, UserName);
		request.setAttribute("myresDetails", myresDetails);
		

		RequestDispatcher dis = request.getRequestDispatcher("userReservation.jsp");
		dis.forward(request, response);
		
	}else {
		out.println("<script type='text/javascript'>");
		out.println("alert('Your Reference id or Username is incorrect');");
		out.println("location='MyRes.jsp'");
		out.println("</script>");
	}
	
	
	} 

}

package com.manager;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ResCancellationServlet")
public class ResCancellationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		String user_name = request.getParameter("user_name");
		String ref_id= request.getParameter("ref_id");
		String email = request.getParameter("email");
		String reason = request.getParameter("reason");
	    String details = request.getParameter("details");
	    
	    boolean isTrue;
	    
	    isTrue = CancellationDBUtill.insertCancellation(user_name, ref_id, email, reason, details);
	    
	    if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("ResSuccess.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("ResUnsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}

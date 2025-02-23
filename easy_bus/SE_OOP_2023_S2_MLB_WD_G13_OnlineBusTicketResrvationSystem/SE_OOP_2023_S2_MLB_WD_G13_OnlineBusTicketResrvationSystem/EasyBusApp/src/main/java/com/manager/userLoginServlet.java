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

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/userLoginServlet")
public class userLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = userDBUtil.validate(username, password);
		if(isTrue==true) {
			List<User> usDetails = userDBUtil.getUser(username);
			request.setAttribute("usDetails", usDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("viewUserProfile.jsp");
			dis.forward(request, response);
		}else {
			
			out.println("<script type ='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='userlogin.jsp'");
			out.println("</script>");
			
		}
	}

}

<%


       String Aid = request.getParameter("Aid");
       String password_A = request.getParameter("password_A");
       
       if(Aid.equals("admin") && password_A.equals("ad2001"))
       {
    	   response.sendRedirect("adminpanel.jsp");
       }
       
       else
       {
    	   out.println("Login fail");
       }







%>
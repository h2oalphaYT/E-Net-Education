package com.staffsup;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;





public class ViewTTservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
	
		ArrayList<TimeT> SVtimeTable = StaffsupDBUtil.getTTDetails();
		
		request.setAttribute("SVtimeTable",SVtimeTable);
		
		
	}

}

package com.oop.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteStaffInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		 String UserID = request.getParameter("id");
		   System.out.println(UserID);
		   boolean isTrue;
		   
		   isTrue = staffDBUtil.deleteMamber(UserID);
		   
		   if (isTrue == true) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
				dispatcher.forward(request, response);
			}
			else {
				
				staff StfDetails = staffDBUtil.getStaff("UserID");
				request.setAttribute("stfDetails", StfDetails);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("unsuccess.jsp");
				dispatcher.forward(request, response);
			}
		
	}

	

}

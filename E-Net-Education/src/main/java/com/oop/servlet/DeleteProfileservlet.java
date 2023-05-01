package com.oop.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class DeleteProfileservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	   String UserID = request.getParameter("userid");
	   
	   boolean isTrue;
	   
	   isTrue = StudentDBUtill.deleteProfile(UserID);
	   
	   if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Student> StdDetails = StudentDBUtill.getStudent("UserID");
			request.setAttribute("stdDetails", StdDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("unsuccess.jsp");
			dispatcher.forward(request, response);
		}
	   
	   
	}

}

package com.oop.servlet;

import java.io.IOException;

import com.oop.model.Student;
import com.oop.service.IstudentDBUtill;
import com.oop.service.StudentDBUtill;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DeleteProfileservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	   String UserID = request.getParameter("id");
	   System.out.println(UserID);
	   boolean isTrue;
	   
	   IstudentDBUtill STD = new StudentDBUtill();
	   isTrue = STD.deleteProfile(UserID);
	   
	   if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("Registation.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			Student StdDetails = STD.getStudent("UserID");
			request.setAttribute("stdDetails", StdDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("unsuccess.jsp");
			dispatcher.forward(request, response);
		}
	   
	   
	}

}

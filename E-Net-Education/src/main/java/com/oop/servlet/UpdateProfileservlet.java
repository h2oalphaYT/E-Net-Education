package com.oop.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class UpdateProfileservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String fname = request.getParameter("name");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userid = request.getParameter("userid");
		
		boolean  isTrue;
		
		isTrue = StudentDBUtill.updateProfile(  fname ,  lname, email, phone ,userid);
		
		if(isTrue == true) {
			
			List<Student> stdDetails = StudentDBUtill.getStudentpassword(userid);
			request.setAttribute("stdDetails", stdDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("StudentProfile.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Student> stdDetails = StudentDBUtill.getStudentpassword(userid);
			request.setAttribute("stdDetails", stdDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
			
		}
		
		
		
	}

}
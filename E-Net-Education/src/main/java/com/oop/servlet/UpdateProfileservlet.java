package com.oop.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import com.oop.model.Student;
import com.oop.service.StudentDBUtill;


public class UpdateProfileservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session = request.getSession();
		
		String fname = request.getParameter("name");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userid = request.getParameter("userid");
		
		boolean  isTrue;
		
		isTrue = StudentDBUtill.updateProfile(  fname ,  lname, email, phone ,userid);
		
		if(isTrue == true) {
			
			Student stdDetails = StudentDBUtill.getStudent(email);
			session.setAttribute("StdDetails", stdDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("StudentProfile.jsp");
			dis.forward(request, response);
		}
		else {
			
			Student stdDetails = StudentDBUtill.getStudent(email);
			session.setAttribute("StdDetails", stdDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
			
		}
		
		
		
	}

}

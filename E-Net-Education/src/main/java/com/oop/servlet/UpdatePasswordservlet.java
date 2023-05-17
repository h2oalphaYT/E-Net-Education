package com.oop.servlet;

import java.io.IOException;
import java.util.List;

import com.oop.model.Student;
import com.oop.service.IstudentDBUtill;
import com.oop.service.StudentDBUtill;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



@webServlet("/UpdatePassword")
public class UpdatePasswordservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
   
  

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Email = request.getParameter("email");
		String userid = request.getParameter("userid");
		String psw = request.getParameter("psw");
		String Rpsw = request.getParameter("rpsw");
		
		boolean isTrue;
		IstudentDBUtill STD = new StudentDBUtill();
		isTrue = STD.updatePassword( Email,userid, psw,Rpsw);
		

		if(isTrue == true) {
			
			List<Student> stdDetails = STD.getStudentpassword(userid);
			request.setAttribute("stdDetails", stdDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Login.jsp");
			dis.forward(request, response);
		}
		else {
			List<Student> stdDetails = STD.getStudentpassword(userid);
			request.setAttribute("stdDetails", stdDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
		
		
		
		
	
	}

}

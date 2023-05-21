package com.oop.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import com.oop.model.Student;
import com.oop.service.IstudentDBUtill;
import com.oop.service.StudentDBUtill;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@webServlet("/RegistationServlet")
public class RegistationServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
	
		String name= request.getParameter("f_name");
		String l_name = request.getParameter("l_name");
		String userID = request.getParameter("u_id");
		String email = request.getParameter("email");
		int p_number = Integer.parseInt(request.getParameter("p_number"));
		String psw = request.getParameter("psw");
		String c_psw = request.getParameter("c_psw");
		String gender = request.getParameter("gender");
		
		boolean isTrue;
		
		IstudentDBUtill STD = new StudentDBUtill();
				
		if(STD.ValidateEmailRepeat(email)) {
			
			PrintWriter out = response.getWriter();
			out.println("<script> alert ('You cant add same User email');window.location.replace('Registation.jsp'); </script>");
			
		}
		else {
			
		
		isTrue = STD.insertstudent(name,l_name,userID,email,p_number,psw,c_psw,gender);
		 
		if(isTrue) {
			 RequestDispatcher dis = request.getRequestDispatcher ("Login.jsp");
			 dis.forward(request, response);
			 
			 
		 }else {
			 RequestDispatcher dis2 = request.getRequestDispatcher ("unsuccess.jsp");
			 dis2.forward(request, response);
			 
		 }
		}
			 
		 
	}

}

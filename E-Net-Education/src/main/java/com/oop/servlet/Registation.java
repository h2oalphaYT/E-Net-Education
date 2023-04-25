package com.oop.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


@webServlet("/Registration")
public class Registation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
	
		String name= request.getParameter("f_name");
		String l_name = request.getParameter("l_name");
		String email = request.getParameter("email");
		String p_number = request.getParameter("p_number");
		String psw = request.getParameter("psw");
		String c_psw = request.getParameter("c_psw");
		String gender = request.getParameter("gender");
		
		boolean isTrue;
		
		
	isTrue = StudentDBUtill.insertstudent(name, l_name, email, p_number, psw, c_psw, gender);
		 if(isTrue == true) {
			 RequestDispatcher dis = request.getRequestDispatcher ("success.jsp");
			 dis.forward(request, response);
			 
			 
		 }else {
			 RequestDispatcher dis2 = request.getRequestDispatcher ("unsuccess.jsp");
			 dis2.forward(request, response);
			 
			 
		 }
	}

}

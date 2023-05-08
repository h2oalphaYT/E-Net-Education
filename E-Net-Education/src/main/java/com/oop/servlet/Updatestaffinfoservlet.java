package com.oop.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Updatestaffinfoservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Fname = request.getParameter("f_name");
    	String Lname = request.getParameter("l_name");
    	String email= request.getParameter("email");
    	String phone = request.getParameter("contactno");
    	String position = request.getParameter("position");
    	String username= request.getParameter("username");
    	String password= request.getParameter("password");
    	
    	boolean isTrue;
    	
    	isTrue = staffDBUtil.updateStaff(Fname,Lname, email, phone, position, username, password);
    	
    	if(isTrue==true) {
    		
    		staff staffDetails = staffDBUtil.getstaff(username);
    		RequestDispatcher dis= request.getRequestDispatcher("success.jsp");
    		dis.forward(request, response);
    	}
    	else {
    		RequestDispatcher dis2= request.getRequestDispatcher("unsuccess.jsp");
    		dis2.forward(request, response);
    				
    	}
	}

}
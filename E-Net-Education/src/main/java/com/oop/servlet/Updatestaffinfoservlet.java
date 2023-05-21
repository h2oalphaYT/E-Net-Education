package com.oop.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;

import com.oop.model.Student;
import com.oop.model.staff;
import com.oop.service.IstaffDBUtill;
import com.oop.service.staffDBUtil;

public class Updatestaffinfoservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	
		
		
		String Fname = request.getParameter("name");
    	String Lname = request.getParameter("lname");
    	String email= request.getParameter("email");
    	String phone = request.getParameter("phone");
    	String position = request.getParameter("position");
    	String username= request.getParameter("userid");
    	
    	
    	boolean isTrue;
    	
    	IstaffDBUtill STF = new staffDBUtil();
    	
    	isTrue = STF.updateStaff(Fname,Lname, email, phone, position, username);
    	
    	if(isTrue==true) {
    	
    		RequestDispatcher dis= request.getRequestDispatcher("staffdetail.jsp");
    		dis.forward(request, response);
    	}
    	else {
    		
    		RequestDispatcher dis2= request.getRequestDispatcher("unsuccess.jsp");
    		dis2.forward(request, response);
    				
    	}
	}

}
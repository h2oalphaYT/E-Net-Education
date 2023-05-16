package com.oop.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.oop.model.staff;
import com.oop.service.staffDBUtil;

public class DeleteStaffInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		 String UserID = request.getParameter("id");
		   System.out.println(UserID);
		   boolean isTrue;
		   
		   isTrue = staffDBUtil.deleteMamber(UserID);
		   
		   
		   if(isTrue) {
				 RequestDispatcher dis = request.getRequestDispatcher ("staffdetail.jsp");
				 dis.forward(request, response);
				 
				 
			 }else {
				 RequestDispatcher dis2 = request.getRequestDispatcher ("staffdetail.jsp");
				 dis2.forward(request, response);
				 
				 
			 }
		
	}

	

}

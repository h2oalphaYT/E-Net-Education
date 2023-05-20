package com.oop.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.oop.service.ContactDBUtill;
import com.oop.service.IcontactDBUtill;
import com.oop.service.StudentDBUtill;

@webServlet("/contactInsertServlet")
public class contactInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String name= request.getParameter("name");
		String Email = request.getParameter("email");
		String massage = request.getParameter("comments");
	
		
		boolean isTrue; 
		
		IcontactDBUtill CDB = new ContactDBUtill();
		
		isTrue = CDB.insertContact(name,Email,massage);
		 
		if(isTrue) {
			 RequestDispatcher dis = request.getRequestDispatcher ("StudentPortal.jsp");
			 dis.forward(request, response);
			 
			 
		 }else {
			 RequestDispatcher dis2 = request.getRequestDispatcher ("unsuccess.jsp");
			 dis2.forward(request, response);
			 
			 
		 }
	}

}

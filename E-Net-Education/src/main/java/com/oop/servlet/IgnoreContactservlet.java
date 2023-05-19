package com.oop.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.oop.model.Contact;
import com.oop.model.Student;
import com.oop.service.ContactDBUtill;
import com.oop.service.IcontactDBUtill;
import com.oop.service.IstaffDBUtill;
import com.oop.service.staffDBUtil;


public class IgnoreContactservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		   int contactID = Integer.parseInt(request.getParameter("id"));
		   System.out.println(contactID);
		   boolean isTrue;
		   IcontactDBUtill contact = new ContactDBUtill();
		   isTrue = contact.deleteContact(contactID);
		   
		   
		   if(isTrue) {
				 RequestDispatcher dis = request.getRequestDispatcher ("ContactAdminview.jsp");
				 dis.forward(request, response);
				 
				 
			 }else {
				 Contact contactDetails = contact.getContact("contactID");
				request.setAttribute("ContactDetails", contactDetails);
				 
				 RequestDispatcher dis2 = request.getRequestDispatcher ("ContactAdminview.jsp");
				 dis2.forward(request, response);
				 
				 
			 }

	}

}

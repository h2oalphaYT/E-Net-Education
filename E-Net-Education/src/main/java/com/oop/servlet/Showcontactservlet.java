package com.oop.servlet;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import com.oop.model.Contact;

import com.oop.service.ContactDBUtill;
import com.oop.service.IcontactDBUtill;



public class Showcontactservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		IcontactDBUtill CDB = new ContactDBUtill();
		ArrayList<Contact> Contactlist =  CDB.getContactDetails();
		
		request.setAttribute("Contactlist",Contactlist);
	}


}

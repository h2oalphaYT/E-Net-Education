package com.oop.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.oop.model.staff;
import com.oop.service.IstaffDBUtill;
import com.oop.service.staffDBUtil;

//singleton Design Pattern
public class EditstaffProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		IstaffDBUtill STF = new staffDBUtil();
		staff Staff = STF.getStaff(id);
		
		request.setAttribute("StaffDetails", Staff);

		RequestDispatcher dis = request.getRequestDispatcher("updatestaffinfo.jsp");
		dis.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}

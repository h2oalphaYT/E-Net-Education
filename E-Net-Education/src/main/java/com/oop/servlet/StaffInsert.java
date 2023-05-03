package com.oop.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class StaffInsert
 */
public class StaffInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StaffInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Fname = request.getParameter("f_name");
    	String Lname = request.getParameter("l_name");
    	String email= request.getParameter("email");
    	String phone = request.getParameter("phone");
    	String position = request.getParameter("position");
    	String username= request.getParameter("uid");
    	String password= request.getParameter("psw");
    	
    	boolean isTrue;
    	
    	isTrue = staffDBUtil.insertStaff(Fname,Lname, email, phone, position, username, password);
    	
    	if(isTrue==true) {
    		RequestDispatcher dis= request.getRequestDispatcher("success.jsp");
    		dis.forward(request, response);
    	}
    	else {
    		RequestDispatcher dis2= request.getRequestDispatcher("unsuccess.jsp");
    		dis2.forward(request, response);
    				
    	}
	}

}

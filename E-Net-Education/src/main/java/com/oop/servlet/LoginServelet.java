package com.oop.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.oop.model.Student;
import com.oop.service.IstudentDBUtill;
import com.oop.service.StudentDBUtill;

@webServlet("/login")
public class LoginServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String email = request.getParameter("email");
		String psw = request.getParameter("psw");
		
		boolean isTrue;
		IstudentDBUtill STD = new StudentDBUtill();
		//validate email
		isTrue = STD.validate(email, psw);
		
		if (isTrue == true) {
			Student StdDetails = STD.getStudent(email);
			
			request.setAttribute("StdDetails", StdDetails);
			session.setAttribute("StdDetails", StdDetails);
			
			RequestDispatcher dis = null;
			System.out.println(StdDetails.getPosition());
			if(StdDetails.getPosition().equals("Admin")) {
				dis = getServletContext().getRequestDispatcher("/AdminPortal.jsp");
			}
			else {
				dis = getServletContext().getRequestDispatcher("/StudentPortal.jsp");
			}
			dis.forward(request, response);
			
		} else {
			System.out.println("error");
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='Login.jsp'");
			out.println("</script>");
		}
		
	}
	

}

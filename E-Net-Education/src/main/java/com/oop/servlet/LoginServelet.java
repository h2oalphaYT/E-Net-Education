package com.oop.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@webServlet("/login")
public class LoginServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String email = request.getParameter("email");
		String psw = request.getParameter("psw");
		
		boolean isTrue;
		
		isTrue = StudentDBUtill.validate(email, psw);
		
		if (isTrue == true) {
			List<Student> StdDetails = StudentDBUtill.getStudent(email);
			request.setAttribute("StdDetails", StdDetails);
			RequestDispatcher dis = getServletContext().getRequestDispatcher("/StudentProfile.jsp");
			dis.forward(request, response);
		} else {
			System.out.println("error");
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='Exam.jsp'");
			out.println("</script>");
		}
		
	}
	

}

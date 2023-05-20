 package com.staffsup;

import java.io.IOException;



import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/CreateTTservlet")
public class CreateTTservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String examno = request.getParameter("examno");
		String module = request.getParameter("module");
		String edate = request.getParameter("edate");
		String stime = request.getParameter("stime");
		String tdue = request.getParameter("tdue");
		
		boolean isTrue;
		IStaffsupDBUtil SSDB = new StaffsupDBUtil();
		isTrue =SSDB.insertstaffsup(examno, module, edate, stime, tdue);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("successCT.jsp");
			dis.forward(request,response);
			
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccessCT.jsp");
			dis2.forward(request,response);
		}
		
		
	}

}

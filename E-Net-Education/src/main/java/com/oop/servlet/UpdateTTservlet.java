 package com.oop.servlet;
 import com.oop.model.TimeT;
import com.oop.service.IStaffsupDBUtil;
 import com.oop.service.StaffsupDBUtil;
import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/UpdateTCservlet")
public class UpdateTTservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String examno = request.getParameter("examno");
		String module = request.getParameter("module");
		String edate = request.getParameter("edate");
		String stime = request.getParameter("stime");
		String tdue = request.getParameter("tdue");
		
		boolean isTrue;
		IStaffsupDBUtil SSDB = new StaffsupDBUtil();
		isTrue = SSDB.updatestaffsup(examno, module, edate, stime, tdue);
		
		if(isTrue == true) {
			
			List<TimeT> timetable = SSDB.getTimetDetails(examno);
			request.setAttribute("timetable", timetable);
			
			RequestDispatcher dis = request.getRequestDispatcher("timetable.jsp");
			dis.forward(request,response);
			
		}
		else {
			List<TimeT> timetable = SSDB.getTimetDetails(examno);
			request.setAttribute("timetable", timetable);
			
			RequestDispatcher dis = request.getRequestDispatcher("timetable.jsp");
			dis.forward(request,response);
			
		}
		
	}

}

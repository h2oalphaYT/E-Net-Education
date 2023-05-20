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


@WebServlet("/DeleteTTservlet")
public class DeleteTTservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String examno = request.getParameter("examno");
		
		boolean isTrue;
		IStaffsupDBUtil SSDB = new StaffsupDBUtil();
		isTrue = SSDB.deletestaffsup(examno);
		
		if(isTrue==true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("creatett.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<TimeT> timetable = SSDB.getTimetDetails(examno);
			request.setAttribute("timetable", timetable);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("timetable.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}

}

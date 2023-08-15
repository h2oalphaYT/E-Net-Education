package com.oop.servlet;
import com.oop.service.IStaffsupDBUtil;
import com.oop.service.StaffsupDBUtil;
import java.io.IOException;



import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/CreateTTservlet")
<<<<<<< Updated upstream
//singleton Design Pattern
public class CreateTTservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
=======
>>>>>>> Stashed changes

//inheritance
public class CreateTTservlet extends HttpServlet   {
	private static final long serialVersionUID = 1L;  //Singleton design pattern

	//method overriding pholymorpism
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
			RequestDispatcher dis = request.getRequestDispatcher("successCT.jsp");//get success message
			dis.forward(request,response);
			
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccessCT.jsp");//get unsuccess message
			dis2.forward(request,response);
		}
		
		
	}

}

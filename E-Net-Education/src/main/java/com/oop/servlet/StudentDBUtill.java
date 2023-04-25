package com.oop.servlet;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;

public class StudentDBUtill {
		
 
	
	public static Statement stmt;
	
	
	public static boolean insertstudent(String name, String l_name, String email, int p_number, String psw, String c_psw, String gender) {
		
		boolean isSuccess = false ;
		
		
		
		
		String url ="jdbc:mysql://localhost:3306/e-net-education" ;
		String user ="root";
		String pass = "root";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			stmt =  con.createStatement();
			
			String sql = "insert into registration(F_name,L_name,S_email,P_number,Password,Confirmpsw,Gender) values ('"+name+"','"+l_name+"','"+email+"','"+p_number+"','"+psw+"','"+c_psw+"','"+gender+"')";
			int rs =  stmt.executeUpdate(sql);
			
			if (rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false ;
			}
			
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
}

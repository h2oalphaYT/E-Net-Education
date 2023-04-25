package com.oop.servlet;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.List;

public class StudentDBUtill {
		
	public static List<Student> validate(String Email , String Spassword){
		return null;
		
	}
	
	public static Statement stmt;
	
	
	public static boolean insertstudent(String fname , String lname,String email,String phone,String psw,String cpsw,String Gender) {
		
		boolean isSuccess = false ;
		
		
		
		//create db connection
		String url ="jdbc:mysql://localhost:3306/e-net-education" ;
		String user ="root";
		String pass = "root";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt =  (Statement) con.createStatement();
			
			String sql = "insert into registration(F_name,L_name,S_email,P_number,Password,Confirm_psw,Gender) values ('"+fname+"','"+lname+"','"+email+"','"+phone+"','"+psw+"','"+cpsw+"','"+Gender+"')";
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

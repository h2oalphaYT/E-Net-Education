package com.oop.servlet;

import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;



public class StudentDBUtill {
	

	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static java.sql.ResultSet rs = null;
    
	public static boolean validate(String email, String psw) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from registration where S_email='"+email+"' and Password='"+psw+"'";
			rs =  stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Student> getStudent(String email) {
		
		ArrayList<Student> Student = new ArrayList<>();
		
		
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();			
			String sql = "select * from regitration where S_email='"+email+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				
				
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String stdemail = rs.getString(4);
				int phone = rs.getInt(5);
				String psw = rs.getString(6);
				String cpsw = rs.getString(7);
				String Gender = rs.getString(8);
				
				Student cus = new Student(fname,lname,stdemail,phone,psw,cpsw,Gender);
				Student.add(cus);
				
			}
			
		} catch (Exception e) {
			
		}
		
		return Student;	
	}
	
	
	
	
	
	
	public static boolean insertstudent(String name, String l_name, String email, int p_number, String psw, String c_psw, String gender) {
		
		boolean isSuccess = false ;
		
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt =  con.createStatement();
			
			String sql = "insert into registration(F_name,L_name,S_email,P_number,Password,Confirm_psw,Gender) values ('"+name+"','"+l_name+"','"+email+"','"+p_number+"','"+psw+"','"+c_psw+"','"+gender+"')";
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

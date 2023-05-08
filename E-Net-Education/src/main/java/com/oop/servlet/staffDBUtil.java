package com.oop.servlet;

import java.sql.Connection;


import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class staffDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean isSuccess;
	

	public static staff getstaff(String username) {
		staff stf = null;
	   	 
	   	 try {
	   		 
	   		Class.forName("com.mysql.jdbc.Driver");
	   		
	   		 con = DBConnect.getConnection();
	   		 stmt = con.createStatement();
	   		 String sql = "select * from staff where username='"+username+"'" ;
	         rs = stmt.executeQuery(sql);
	   		 
	   		 while(rs.next()) {
	   			
	   			 String name= rs.getString(2);
	   			String lname= rs.getString(3);
	   			 
	   			 String email=rs.getString(4);
	   			 String contactno = rs.getString(5);
	   			 String position = rs.getString(6);
	   			 String userU = rs.getString(7);
	   			 String passU = rs.getString(8);
	   			 
	   			stf =  new staff( name,lname, email, contactno, position, userU, passU);
	   			System.out.println("abc"+stf);
	   		 }
	   	 }
	   	 catch(Exception e) {
	   		 e.printStackTrace();
	   	 }
	   	 
	   	 
	   	 return stf;
		
	}
	
	public static boolean insertStaff(String Fname,String Lname, String email, String contactno, String position, String username, String password) {
		
		boolean isSuccess= false;
		
	   	 try {
	   		 con = DBConnect.getConnection();
	   		 stmt = con.createStatement();
     		 String sql="insert into staff (f_name,l_name,email,contactno,position,username,password) values('"+Fname+"','"+Lname+"','"+email+"','"+contactno+"','"+position+"','"+username+"','"+password+"')";
	   		 
	   		 int rs= stmt.executeUpdate(sql);
	   		 if(rs>0) {
	   			 isSuccess= true;
	   		 }
	   		 else {
	   			 isSuccess=false;
	   		 }
	   		 
	   	 }
	   	 catch(Exception e) {
	   		 e.printStackTrace();
	   	 }
		
		return isSuccess;
	}

	public static boolean updateStaff(String fname, String lname, String email, String phone, String position,String username, String password) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql ="update staff set f_name='"+fname+"', l_name='"+lname+"', email='"+email+"',contactno='"+phone+"',position='"+position+"' where username='"+username+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess= true;
			}
			else {
				isSuccess= false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
			
		
		
		return isSuccess;
	
	}

}

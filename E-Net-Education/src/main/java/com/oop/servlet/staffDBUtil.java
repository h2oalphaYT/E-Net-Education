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
	
	public static ArrayList<staff> getstaffDetails(){
		
		ArrayList<staff> stfDetails = new ArrayList<staff>();
	   	 
	   
	   	 //validating
	   	 
	   	 try {
	   		 con = DBConnect.getConnection();
	   		 stmt = con.createStatement();
	   		 String sql = "select * from staff" ;
	         rs = stmt.executeQuery(sql);
	   		 
	   		 while(rs.next()) {
	   			 
	   			 String name= rs.getString(2);
	   			 String lname= rs.getString(3);
	   			 String email=rs.getString(4);
	   			 String contactno = rs.getString(5);
	   			 String position = rs.getString(6);
	   			 String UserU = rs.getString(7);
	   			 String passU = rs.getString(8);
	   			 
	   			 staff s =  new staff(name, lname,email, contactno,  position, UserU, passU);
	   			stfDetails.add(s);
	   		 }
	   	 }
	   	 catch(Exception e) {
	   		 e.printStackTrace();
	   	 }
	   	 
	   	 
	   	 return stfDetails;
		
	}
	
	public static boolean insertStaff(String Fname,String Lname, String email, String contactno, String position, String username, String password) {
		
		boolean isSuccess= false;
		
	   	 try {
	   		 con = DBConnect.getConnection();
	   		 stmt = con.createStatement();
     		 String sql="insert into staff (f_name,l_name,email,contactno,position,username,password) values('"+Fname+"','"+Lname+"','"+email+"','"+contactno+"','"+position+"','"+username+"','"+password+"')";
	   		 System.out.println(sql);
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

	public static boolean updateStaff(String fname, String lname, String email, String phone, String position,String username) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql ="update staff set F_name='"+fname+"', L_name='"+lname+"', S_email='"+email+"',P_number='"+phone+"',Position='"+position+"' where UserID='"+username+"'";
			
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

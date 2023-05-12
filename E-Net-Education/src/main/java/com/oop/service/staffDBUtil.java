package com.oop.service;

import java.sql.Connection;


import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.oop.model.staff;
import com.oop.util.DBConnect;

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
	
	public static staff getStaff(String userid) {	
		staff stf = null;
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();			
			String sql = "select * from staff where username='"+userid+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				
				
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String UserID =rs.getString(7);
				String stfemail = rs.getString(4);
				String phone = rs.getString(5);
				String Pos = rs.getString(6);
				String psw = rs.getString(8);
				
				
				stf = new staff(fname,lname,stfemail,UserID,phone,psw,Pos);
				
				System.out.println("abc"+stf);
				
			}
			
		} catch (Exception e) {
			
		}
		
		return stf;	
	}

	public static boolean updateStaff(String fname, String lname, String email, String phone, String position,String username) {
		
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
	public static boolean deleteMamber(String userid) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete * from staff where username='"+userid+"'";
			int r = stmt.executeUpdate(sql);
			
			if (r > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}



}

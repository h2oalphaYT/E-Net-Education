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
	
	public static List<staff> validate(String username, String password){
		ArrayList<staff> stf = new ArrayList<>();
	   	 
	   
	   	 //validating
	   	 
	   	 try {
	   		 con = DBConnect.getConnection();
	   		 stmt = con.createStatement();
	   		 String sql = "select * from staff where username='"+username+"' and password='"+password+"'";
	         rs = stmt.executeQuery(sql);
	   		 
	   		 if(rs.next()) {
	   			 int id= rs.getInt(1);
	   			 String name= rs.getString(2);
	   			 String email=rs.getString(3);
	   			 String contactno = rs.getString(4);
	   			 String position = rs.getString(5);
	   			 String userU = rs.getString(6);
	   			 String passU = rs.getString(7);
	   			 
	   			 staff s =  new staff(id, name, email, contactno, position, userU, passU);
	   			 stf.add(s);
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

}

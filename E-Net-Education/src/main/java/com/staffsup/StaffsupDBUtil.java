package com.staffsup;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.oop.model.Contact;
import com.oop.util.DBConnect;

public class StaffsupDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	 	
	public static boolean insertstaffsup(String examno,String module,String edate,String stime,String tdue) {
		
		boolean isSuccess = false;
		
		//create database connection
		
		
		try {
		
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			
			String sql = "insert into creatett values('"+examno+"','"+module+"','"+edate+"','"+stime+"','"+tdue+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	} 
	
	public static boolean updatestaffsup(String examno,String module,String edate,String stime,String tdue) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "update creatett set module='"+module+"', edate='"+edate+"', stime='"+stime+"', tdue='"+tdue+"'"
					+ " where examno ='"+examno+"'";
			 int rs = stmt.executeUpdate(sql);
			 
			 if(rs > 0) {
				 isSuccess = true;
				 
			 }else {
				 isSuccess = false;
			 }
			 
				
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		
		return isSuccess;  
	}
	
	public static List<TimeT> validate(String examno){
	
		 ArrayList<TimeT> time = new ArrayList<>();
		 
		 try {
			 
			 con = DBConnect.getConnection();
			 stmt = con.createStatement();
			 
			String sql = "select * from creatett where examno = '"+examno+"'" ; 
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {

				String examnum = rs.getString(1);
				String module = rs.getString(2);
				String edate = rs.getString(3);
				String stime = rs.getString(4);
				String tdue = rs.getString(5);
				
				TimeT t = new TimeT(examnum,module,edate,stime,tdue);
				time.add(t);
				
				
			}
			
		 }
		 catch(Exception e){
			 e.printStackTrace();
		 }
		 
		 return time;
	}
	
	public static List<TimeT> getTimetDetails(String examno){
		ArrayList<TimeT> time = new ArrayList<>();
		
		try {
			
			 con = DBConnect.getConnection();
			 stmt = con.createStatement();
			 
			 String sql = "select * from creatett where examno = '"+examno+"'";
			 
			 rs = stmt.executeQuery(sql);
			 
			 while(rs.next()) {
				 
				 String examnum = rs.getString(1);
					String module = rs.getString(2);
					String edate = rs.getString(3);
					String stime = rs.getString(4);
					String tdue = rs.getString(5);
					
					TimeT t = new TimeT(examnum, module, edate, stime, tdue);
					time.add(t);
				 
			 }
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return time;
	}
	
	public static boolean deletestaffsup(String examno) {
		
		try {
			 con = DBConnect.getConnection();
			 stmt = con.createStatement();
			 
			 String sql = "delete from creatett where examno = '"+examno+"'";
			 
			 int r = stmt.executeUpdate(sql);
			 
			 if(r > 0) {
				 isSuccess = true;
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
	
	public static ArrayList<TimeT> getTTDetails(){
		
		ArrayList<TimeT> SVtimeTable = new ArrayList<TimeT>();
	   	 
	   
	   	 //validating
	   	 
	   	 try {
	   		 con = DBConnect.getConnection();
	   		 stmt = con.createStatement();
	   		 String sql = "select * from creatett" ;
	         rs = stmt.executeQuery(sql);
	   		 
	   		 while(rs.next()) {
	   			 
	   			 String examno= rs.getString(1);
	   			 String module= rs.getString(2);
	   			 String edate=rs.getString(3);
	   			 String stime = rs.getString(4);
	   			 String tdue = rs.getString(5);
	   			
	   			 
	   			 TimeT t =  new TimeT(examno,module,edate,stime,tdue );
	   			 
	   			SVtimeTable.add(t);
	   		 }
	   	 }
	   	 catch(Exception e) {
	   		 e.printStackTrace();
	   	 }
	   	 
	   	 
	   	 return SVtimeTable;
		
	}

}

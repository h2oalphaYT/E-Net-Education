package com.oop.service;

import java.sql.Connection;
import java.sql.Statement;

import com.oop.model.Contact;
import com.oop.util.DBConnect;

public class ContactDBUtill {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static java.sql.ResultSet rs = null;
	
	public static Contact getContact(String iD) {	
		Contact contact = null;
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();			
			String sql = "select * from contact where idContact='"+iD+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				
				
				int ID = rs.getInt(1);
				String name = rs.getString(2);
				String Email =rs.getString(3);
				String massage = rs.getString(4);
				
				
				contact = new Contact(ID,name,Email,massage);
				
				System.out.println("abc"+contact);
				
			}
			
		} catch (Exception e) {
			
		}
		
		return contact;	
	}
	

	public static boolean insertContact( String name ,String Email,String massage) {
		
		boolean isSuccess = false ;
		
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt =  con.createStatement();
			
			String sql = "insert into contact(Name , Email ,Message) values ('"+name+"','"+Email+"','"+massage+"')";
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

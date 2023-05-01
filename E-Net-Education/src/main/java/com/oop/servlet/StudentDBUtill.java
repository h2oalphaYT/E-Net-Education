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
			String sql = "select * from registration where S_email='"+email+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				
				
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String UserID =rs.getString(9);
				String stdemail = rs.getString(4);
				int phone = rs.getInt(5);
				String psw = rs.getString(6);
				String cpsw = rs.getString(7);
				String Gender = rs.getString(8);
				
				
				Student std = new Student(fname,lname,UserID,stdemail,phone,psw,cpsw,Gender);
				
				System.out.println("abc"+std);
				Student.add(std);
				
			}
			
		} catch (Exception e) {
			
		}
		
		return Student;	
	}
	
	
	
	
	
	
	public static boolean insertstudent(String name, String l_name,String UserID, String email, int p_number, String psw, String c_psw, String gender) {
		
		boolean isSuccess = false ;
		
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt =  con.createStatement();
			
			String sql = "insert into registration(F_name,L_name,UserID,S_email,P_number,Password,Confirm_psw,Gender) values ('"+name+"','"+l_name+"','"+UserID+"','"+email+"','"+p_number+"','"+psw+"','"+c_psw+"','"+gender+"')";
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
	
public static boolean updatePassword( String Email,  String userid, String psw,String Rpsw) {
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update customer set Password='"+psw+"'"  + "where UserID='"+userid+"' and S_email='"+Email+"'";
    				
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }


public static List<Student> getStudentpassword(String userid) {
	
	
	
	ArrayList<Student> std = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from registration where UserID='"+userid+"'";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			String fname = rs.getString(2);
			String lname = rs.getString(3);
			String UserID =rs.getString(9);
			String stdemail = rs.getString(4);
			int phone = rs.getInt(5);
			String psw = rs.getString(6);
			String cpsw = rs.getString(7);
			String Gender = rs.getString(8);
			
			Student c = new Student(fname,lname,UserID,stdemail,phone,psw,cpsw,Gender);
			std.add(c);
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}	
	return std;	
}


public static boolean deleteProfile(String userid) {
	
	
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "delete from registration where UserID='"+userid+"'";
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



package com.oop.service;

import java.util.List;

import com.oop.model.Student;

public interface IstudentDBUtill {

	public  boolean validate(String email, String psw);
	
	public Student getStudent(String email);
	
	public  boolean ValidateEmailRepeat(String email);
	
	public  boolean insertstudent(String name, String l_name,String UserID, String email, int p_number, String psw, String c_psw, String gender);
	
	public  boolean updatePassword( String Email,  String userid, String psw,String Rpsw);
	
	public  boolean updateProfile( String fname ,  String lname, String email,String phone ,String userid);
	
	public  List<Student> getStudentpassword(String userid);
	
	public  boolean deleteProfile(String id);
}

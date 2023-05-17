package com.oop.service;

import java.util.ArrayList;

import com.oop.model.staff;

public interface IstaffDBUtill {
	
	public  ArrayList<staff> getstaffDetails();
	
	public  boolean insertStaff(String Fname,String Lname, String email, String contactno, String position, String username, String password);

	public  staff getStaff(String userid);

	public  boolean updateStaff(String fname, String lname, String email, String phone, String position,String username);
	
	
	public  boolean deleteMamber(String userid);
}

package com.oop.model;

public class Admin extends Student {
	
	
	
	
	
	public Admin(String name, String l_name, String UserID, String email, int p_number, String psw, String c_psw,
			String gender, String position) {
		super(name, l_name, UserID, email, p_number, psw, c_psw, gender, position);
		// TODO Auto-generated constructor stub
	}
	
	
	private String AdminID;
	private String SisCode;
	@Override
	
	
	
	
	
	public String toString() {
		return "Admin [AdminID=" + AdminID + ", SisCode=" + SisCode + "]";
	}

}


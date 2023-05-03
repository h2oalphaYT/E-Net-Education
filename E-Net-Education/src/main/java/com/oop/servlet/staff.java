package com.oop.servlet;

public class staff {
	
	private int id;
	private String f_name;
	private String l_name;
	private String phone;
	private String position;
	private String username;
	private String password;
	
	
	public staff(int id, String f_name, String l_name, String phone, String position, String username, String password) {
		super();
		this.id = id;
		this.f_name = f_name;
		this.l_name = l_name;
		this.phone = phone;
		this.position = position;
		this.username = username;
		this.password = password;
	}


	public int getId() {
		return id;
	}


	public String getF_name() {
		return f_name;
	}


	public String getL_name() {
		return l_name;
	}


	public String getPhone() {
		return phone;
	}

	public String getPosition() {
		return position;
	}


	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}
		

}

package com.oop.model;

public class Contact {
	
	private int ContactID;
	public int getContactID() {
		return ContactID;
	}



	public void setContactID(int contactID) {
		ContactID = contactID;
	}



	private String name ;
	private String Email;
	private String Comment;
	
	
	
	public Contact( int ContactID, String name,String Email,String Comment) {
		
		super();
		
		
		this.name =name;
		this.Email=Email;
		this.Comment = Comment;
		
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getEmail() {
		return Email;
	}



	public void setEmail(String email) {
		Email = email;
	}



	public String getComment() {
		return Comment;
	}



	public void setComment(String comment) {
		Comment = comment;
	}
	
	
	
	
	

}

package com.oop.model;

public class Contact {
	
	private int ContactID;
	private String name ;
	private String Email;
	private String Comment;
	
	
	
	public Contact( int ContactID, String name,String Email,String Comment) {
		
		super();
		
		this.ContactID=ContactID;
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
	
	public int getID() {
		return ContactID;
	}




	public void setComment(String comment) {
		Comment = comment;
	}
	
	
	
	
	

}

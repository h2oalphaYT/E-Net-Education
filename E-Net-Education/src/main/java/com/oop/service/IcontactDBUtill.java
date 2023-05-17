package com.oop.service;

import java.util.ArrayList;

import com.oop.model.Contact;

public interface IcontactDBUtill {
	
	public  Contact getContact(String iD);
	
	public  boolean insertContact( String name ,String Email,String massage);
	
	public  ArrayList<Contact> getContactDetails();
	

}

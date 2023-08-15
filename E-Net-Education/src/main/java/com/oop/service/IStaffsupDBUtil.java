package com.oop.service;


//interface

import java.util.ArrayList;

import java.util.List;

import com.oop.model.TimeT;
import com.oop.service.StaffsupDBUtil;


public interface IStaffsupDBUtil  {
	
	public boolean insertstaffsup(String examno,String module,String edate,String stime,String tdue);
	
	public boolean updatestaffsup(String examno,String module,String edate,String stime,String tdue);
	
	public List<TimeT> validate(String examno);
	
	public List<TimeT> getTimetDetails(String examno);
	
	public boolean deletestaffsup(String examno);
	
	public ArrayList<TimeT> getTTDetails();

}

package com.oop.model;

public class TimeT {
	
	private String examno;
	private String module;
	private String edate;
	private String stime;
	private String tdue;
	
	public TimeT(String examno, String module, String edate, String stime, String tdue) {

		this.examno = examno;
		this.module = module;
		this.edate = edate; //implementation the data
		this.stime = stime;
		this.tdue = tdue;
	}
    //getters encapsulation
	public String getExamno() {
		return examno;
	}

	

	public String getModule() {
		return module;
	}

	

	public String getEdate() {
		return edate;
	}

	

	public String getStime() {
		return stime;
	}

	

	public String getTdue() {
		return tdue;
	}

	
	
	
	
	

}

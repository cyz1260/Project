package com.niit.pojo;

public class SBookList {
	
	private String sbookid;
	private String suserid; 
	private String sbookname;
	private String sbookprice;
	private String sbookcategory;
	private String sbookdescription; 
	private String sbookimga; 
	private String sbookimgb;
	private String sbookstate;
	
	public SBookList() {
		
	}

	public SBookList(String sbookid, String suserid, String sbookname, String sbookprice, String sbookcategory,
			String sbookdescription, String sbookimga, String sbookimgb, String sbookstate) {
		this.sbookid = sbookid;
		this.suserid = suserid;
		this.sbookname = sbookname;
		this.sbookprice = sbookprice;
		this.sbookcategory = sbookcategory;
		this.sbookdescription = sbookdescription;
		this.sbookimga = sbookimga;
		this.sbookimgb = sbookimgb;
		this.sbookstate = sbookstate;
	}

	public String getSbookid() {
		return sbookid;
	}

	public void setSbookid(String sbookid) {
		this.sbookid = sbookid;
	}

	public String getSuserid() {
		return suserid;
	}

	public void setSuserid(String suserid) {
		this.suserid = suserid;
	}

	public String getSbookname() {
		return sbookname;
	}

	public void setSbookname(String sbookname) {
		this.sbookname = sbookname;
	}

	public String getSbookprice() {
		return sbookprice;
	}

	public void setSbookprice(String sbookprice) {
		this.sbookprice = sbookprice;
	}

	public String getSbookcategory() {
		return sbookcategory;
	}

	public void setSbookcategory(String sbookcategory) {
		this.sbookcategory = sbookcategory;
	}

	public String getSbookdescription() {
		return sbookdescription;
	}

	public void setSbookdescription(String sbookdescription) {
		this.sbookdescription = sbookdescription;
	}

	public String getSbookimga() {
		return sbookimga;
	}

	public void setSbookimga(String sbookimga) {
		this.sbookimga = sbookimga;
	}

	public String getSbookimgb() {
		return sbookimgb;
	}

	public void setSbookimgb(String sbookimgb) {
		this.sbookimgb = sbookimgb;
	}

	public String getSbookstate() {
		return sbookstate;
	}

	public void setSbookstate(String sbookstate) {
		this.sbookstate = sbookstate;
	}
	
}

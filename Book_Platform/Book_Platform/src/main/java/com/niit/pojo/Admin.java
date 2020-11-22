package com.niit.pojo;

public class Admin {
	
	private String adminid;
	private String adminpassword;
	
	public Admin() {
	}
	
	public Admin(String adminid, String adminpassword) {
		this.adminid = adminid;
		this.adminpassword = adminpassword;
	}
	
	public String getAdminid() {
		return adminid;
	}
	public void setAdminid(String adminid) {
		this.adminid = adminid;
	}
	public String getAdminpassword() {
		return adminpassword;
	}
	public void setAdminpassword(String adminpassword) {
		this.adminpassword = adminpassword;
	}

}

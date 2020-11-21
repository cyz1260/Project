package com.niit.pojo;

public class UserAddress {
	
	private String auseraddressid;
	private String auserid;
	private String ausername;
	private String ausertel;
	private String address;
	
	public UserAddress() {
	}

	public UserAddress(String auseraddressid, String auserid, String ausername, String ausertel, String address) {
		this.auseraddressid = auseraddressid;
		this.auserid = auserid;
		this.ausername = ausername;
		this.ausertel = ausertel;
		this.address = address;
	}

	public String getAuseraddressid() {
		return auseraddressid;
	}

	public void setAuseraddressid(String auseraddressid) {
		this.auseraddressid = auseraddressid;
	}

	public String getAuserid() {
		return auserid;
	}

	public void setAuserid(String auserid) {
		this.auserid = auserid;
	}

	public String getAusername() {
		return ausername;
	}

	public void setAusername(String ausername) {
		this.ausername = ausername;
	}

	public String getAusertel() {
		return ausertel;
	}

	public void setAusertel(String ausertel) {
		this.ausertel = ausertel;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
}

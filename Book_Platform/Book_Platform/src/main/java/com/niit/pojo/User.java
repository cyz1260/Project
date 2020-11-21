package com.niit.pojo;

public class User {
	private int userid;
	private String userpassword;
	private String username;
	private String gender;
	private String telnumber;
	private String userstate;
	
	
	
	public User() {
	}
	
	public User(int userid, String userpassword, String username, String gender, String telnumber, String userstate) {
		this.userid = userid;
		this.userpassword = userpassword;
		this.username = username;
		this.gender = gender;
		this.telnumber = telnumber;
		this.userstate = userstate;
	}
	
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUserpassword() {
		return userpassword;
	}
	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getTelnumber() {
		return telnumber;
	}
	public void setTelnumber(String telnumber) {
		this.telnumber = telnumber;
	}
	public String getUserstate() {
		return userstate;
	}
	public void setUserstate(String userstate) {
		this.userstate = userstate;
	}
	
	
	
}

package com.niit.pojo;

public class BookCategory {
	private String categoryid;
	private String categoryname;
	
	public BookCategory() {
	}

	public BookCategory(String categoryid, String categoryname) {
		this.categoryid = categoryid;
		this.categoryname = categoryname;
	}

	public String getCategoryid() {
		return categoryid;
	}

	public void setCategoryid(String categoryid) {
		this.categoryid = categoryid;
	}

	public String getCategoryname() {
		return categoryname;
	}

	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}
	
}

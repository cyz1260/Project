package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.mapping.AdminMapping;
import com.niit.pojo.Admin;
import com.niit.pojo.BookCategory;
import com.niit.pojo.SBookList;
import com.niit.pojo.User;

@Service
public class AdminService {
	
	@Autowired
	private AdminMapping adminMapping;
	
	public Admin AdminLogin(String adminid) {
		return adminMapping.SelectAdmin(adminid);
	}
	public void AddCategory(String categoryname) {
		adminMapping.AddCategory(categoryname);
	}
	public void DeleteCategory(String categoryid) {
		adminMapping.DeleteCategory(categoryid);
	}
	public List<BookCategory> SelectAllCategory(){
		return adminMapping.SelectAllCategory();
		
	}
	public void UpdateUserState(String userid) {
		adminMapping.UpdateUserState(userid);
	}
	public void UpdateUserStateON(String userid) {
		adminMapping.UpdateUserStateON(userid);
	}
	public List<SBookList> CheckSBookList(){
		
		return adminMapping.CheckSBookList();
	}
	public void UpdateSuccess(String sbookid) {
		adminMapping.UpdateSuccess(sbookid);
	}
	public void UpdateFail(String sbookid) {
		adminMapping.UpdateFail(sbookid);
	}
	
	public SBookList FindSBookState(String sbookid) {
		return adminMapping.SelectSbookState(sbookid);
	}
	
	public List<User> SelectAllUser(){
		return adminMapping.SelectAllUser();
	}
}

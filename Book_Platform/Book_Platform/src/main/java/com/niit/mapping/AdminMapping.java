package com.niit.mapping;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.niit.pojo.Admin;
import com.niit.pojo.BookCategory;
import com.niit.pojo.SBookList;
import com.niit.pojo.User;

public interface AdminMapping {
	
	public Admin SelectAdmin (String adminid);
	  
	public  void AddCategory(String categoryname);
	  
	public void DeleteCategory(String categoryid);
	  
	public List<BookCategory> SelectAllCategory();
	  
	public void UpdateUserState(@Param("userid")String userid);
	  
	public void UpdateUserStateON(@Param("userid")String userid);
	  
	public List<SBookList>CheckSBookList();
	  
	public void UpdateSuccess(@Param("sbookid")String sbookid);
	  
	public void UpdateFail(@Param("sbookid")String sbookid);
	  
	public SBookList SelectSbookState(String sbookid);
	
	public List<User> SelectAllUser();
	
	
}

package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.mapping.UserMapping;
import com.niit.pojo.Orders;
import com.niit.pojo.SBookList;
import com.niit.pojo.User;

@Service
public class UserService {
	
	@Autowired
	private UserMapping userMapping;
	
	public void RegisterUser(User newuser) {
		userMapping.RegisterUser(newuser);
	}
	
	public User UserLogin(String userid) {
		return userMapping.SelectUser(userid);
	}
	
	public User FindUserInfo(String userid) {
		return userMapping.SelectUser(userid);
	}
	
	public void UpdateUserInfo(String userid,String username,String gender,String telnumber) {
		userMapping.UpdateUserInfo(userid, username, gender, telnumber);
	}
	
	public void UpdateUserPassword(String usernewpassword,String userid) {
		userMapping.UpdateUserPassword(usernewpassword, userid);
	}
	
	
	public List<SBookList> SelectUserSellBooks(String suserid) {
		return userMapping.SelectUserSellBooks(suserid);
	}
	
	public void UpdateOneBook(String sbookname,String sbookprice,String sbookid) {
		userMapping.UpdateOneBook(sbookname, sbookprice,sbookid);
	}
	
	public void DeleteOneBook(String sbookid) {
		userMapping.DeleteOneBook(sbookid);
	}
	
	public List<Orders> FindAllOrders(String ouserid){
		return userMapping.FindAllOrders(ouserid);
	}
	
	public void DeleteOrders(String orderid) {
		userMapping.DeleteOrders(orderid);
	}
	
}

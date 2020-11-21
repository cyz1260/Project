package com.niit.mapping;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.niit.pojo.Orders;
import com.niit.pojo.SBookList;
import com.niit.pojo.User;
import com.niit.pojo.UserAddress;

public interface UserMapping {
	
	public void RegisterUser(User newuser);
	
	public User SelectUser (String userid);
	
	public void UpdateUserInfo(@Param("userid")String userid,@Param("username")String username,@Param("gender")String gender,@Param("telnumber")String telnumber);
	
	public void UpdateUserPassword(@Param("usernewpassword")String usernewpassword,@Param("userid")String userid);
	
	
	public List<SBookList> SelectUserSellBooks(String suserid);
	
	public void UpdateOneBook(@Param("sbookname")String sbookname,@Param("sbookprice")String sbookprice,@Param("sbookid")String sbookid);
	
	public void DeleteOneBook(String sbookid);
	
	public List<Orders> FindAllOrders(String ouserid);
	
	public void DeleteOrders(String orderid);
	
	
	public void SellBooks(SBookList sBookList);
	
	public void AddAddress(@Param("auserid")String auserid,@Param("ausername")String ausername,@Param("ausertel")String ausertel,@Param("address")String address);
	
	public List<UserAddress> SelectUserAddress(String auserid);
	
	public void UpdateUserAddress(@Param("ausername")String ausername, @Param("ausertel")String ausertel, @Param("address")String address, @Param("auseraddressid")String auseraddressid);
	
	public void DeleteUserAddress(String auseraddressid);
	
	public UserAddress SelectUserAddressById (String auseraddressid);

}

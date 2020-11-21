package com.niit.mapping;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.niit.pojo.Orders;
import com.niit.pojo.SBookList;
import com.niit.pojo.User;

public interface UserMapping {
	
	public List<SBookList> SelectUserSellBooks(String suserid);
	
	public void UpdateOneBook(@Param("sbookname")String sbookname,@Param("sbookprice")String sbookprice,@Param("sbookid")String sbookid);
	
	public void DeleteOneBook(String sbookid);
	
	public List<Orders> FindAllOrders(String ouserid);
	
	public void DeleteOrders(String orderid);

}

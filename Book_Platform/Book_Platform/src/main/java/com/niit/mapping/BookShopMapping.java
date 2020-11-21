package com.niit.mapping;

import java.util.List;

import com.niit.pojo.Orders;
import com.niit.pojo.SBookList;

public interface BookShopMapping {
	
	public List<SBookList> SelectByBookname(String sbookname);
	
	public List<SBookList> SelectAllBooks();
	
	public List<SBookList> SelectByBookCategory(String sbookcategory);
	
	public SBookList SelectByBookId(String sbookid);
	
	public void BuyOrder(Orders orders);
}

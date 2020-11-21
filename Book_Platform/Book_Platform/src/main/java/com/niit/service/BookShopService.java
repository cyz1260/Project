package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.mapping.BookShopMapping;
import com.niit.pojo.Orders;
import com.niit.pojo.SBookList;

@Service
public class BookShopService {
	
	@Autowired
	private BookShopMapping bookShopMapping;
	
	public List<SBookList> SelectByBookname(String sbookname){
		return bookShopMapping.SelectByBookname(sbookname);
	}
	
	
	public List<SBookList> SelectAllBooks(){
		return bookShopMapping.SelectAllBooks();	
	}
	
	public List<SBookList> SelectByBookCategory(String sbookcategory){
		return bookShopMapping.SelectByBookCategory(sbookcategory);
	}
	
	public SBookList SelectByBookId(String sbookid) {
		return bookShopMapping.SelectByBookId(sbookid);
	}
	
	public void BuyOrder(Orders orders) {
		bookShopMapping.BuyOrder(orders);
	}
	
}

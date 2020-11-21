package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.mapping.BookShopMapping;

import com.niit.pojo.SBookList;

@Service
public class BookShopService {
	
	@Autowired
	private BookShopMapping bookShopMapping;
	
	public List<SBookList> SelectByBookname(String sbookname){
		return bookShopMapping.SelectByBookname(sbookname);
	}
	
}

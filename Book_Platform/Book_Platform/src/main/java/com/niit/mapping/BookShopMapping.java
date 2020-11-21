package com.niit.mapping;

import java.util.List;

import com.niit.pojo.SBookList;

public interface BookShopMapping {
	
	public List<SBookList> SelectByBookname(String sbookname);	
}

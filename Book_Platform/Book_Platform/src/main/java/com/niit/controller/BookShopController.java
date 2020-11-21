package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.pojo.SBookList;

import com.niit.service.BookShopService;
import com.niit.service.UserService;

@Controller
@RequestMapping("/bookshop")
public class BookShopController {
	
	@Autowired
	private BookShopService bookShopService;

	@RequestMapping("/searchbooks")
	public String SearchBooks(String sbookname,String userid,Model model) {
		List<SBookList> sBookLists = bookShopService.SelectByBookname(sbookname);
		model.addAttribute("sbooklist", sBookLists);
		model.addAttribute("userid",userid);
		return "searchbooks";
	}
}

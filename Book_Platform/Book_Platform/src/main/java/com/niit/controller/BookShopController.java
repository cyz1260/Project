package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.pojo.BookCategory;
import com.niit.pojo.Orders;
import com.niit.pojo.SBookList;
import com.niit.pojo.UserAddress;
import com.niit.service.AdminService;
import com.niit.service.BookShopService;
import com.niit.service.UserService;

@Controller
@RequestMapping("/bookshop")
public class BookShopController {
	
	@Autowired
	private BookShopService bookShopService;
	@Autowired
	private AdminService adminService;
	@Autowired
	private UserService userService;
	
	
	//搜索
	@RequestMapping("/searchbooks")
	public String SearchBooks(String sbookname,String userid,Model model) {
		List<SBookList> sBookLists = bookShopService.SelectByBookname(sbookname);
		model.addAttribute("sbooklist", sBookLists);
		model.addAttribute("userid",userid);
		return "searchbooks";
	}
	
	
	@RequestMapping("/gobookshop")
	public String SelectAllBooks(Model model,String userid) {
		List<SBookList> list = bookShopService.SelectAllBooks();
		List<BookCategory> bookCategorielist = adminService.SelectAllCategory();
		model.addAttribute("sbooklist", list);
		model.addAttribute("bookcategorylist", bookCategorielist);
		model.addAttribute("userid",userid);
		return"bookshop";		
	}
	
	@RequestMapping("/selectbybookcategory")
	public String SelectByBookCategory(String sbookcategory,String userid,Model model) {
		List<SBookList> list = bookShopService.SelectByBookCategory(sbookcategory);
		List<BookCategory> bookCategorielist = adminService.SelectAllCategory();
		model.addAttribute("sbooklist", list);
		model.addAttribute("bookcategorylist", bookCategorielist);
		model.addAttribute("userid",userid);
		return "showbooks";
	}
	
	@RequestMapping("/buybook")
	public String BuyBook(String userid,String sbookid,Model model) {
		SBookList sBookList = bookShopService.SelectByBookId(sbookid);
		List<UserAddress> userAddresses = userService.SelectUserAddress(userid);
		model.addAttribute("sbooklist", sBookList);
		model.addAttribute("useraddress",userAddresses);
		model.addAttribute("userid",userid);
		return "order";		
	}
	
	@RequestMapping("/buyorder")
	public String BuyOrder(Orders orders) {
		bookShopService.BuyOrder(orders);
		return "redirect:/user/findallorders?userid="+orders.getOuserid();
	}
}

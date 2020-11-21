  package com.niit.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.niit.pojo.Orders;
import com.niit.pojo.SBookList;
import com.niit.pojo.User;
import com.niit.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/findusersellbooks")
	public String FindUserSellBooks(String userid,Model model) {
		List<SBookList> sbookList = userService.SelectUserSellBooks(userid);
		model.addAttribute("sbooklist", sbookList);
		model.addAttribute("userid", userid);
		return"managebooks";
	}
	
	
	@RequestMapping("/updateonebook")
	public String UpdateOneBook(String sbookname,String sbookprice,String sbookid,String userid) {
		userService.UpdateOneBook(sbookname, sbookprice,sbookid);
		return "redirect:/user/findusersellbooks?userid="+userid;
	}
	
	@RequestMapping("/deleteonebook")
	public String DeleteOneBook(String sbookid,String userid) {
		userService.DeleteOneBook(sbookid);
		return "redirect:/user/findusersellbooks?userid="+userid;
	}
	
	@RequestMapping("/findallorders")
	public String findAllOrders(String userid,Model model) {
		List<Orders> orders = userService.FindAllOrders(userid);
		model.addAttribute("orders", orders);
		model.addAttribute("userid", userid);
		return "manageorders";
	}
	
	@RequestMapping("/deleteorder")
	public String DeleteOrder(String orderid,String userid) {
		userService.DeleteOrders(orderid);
		return "redirect:/user/findallorders?userid="+userid;
	}

}

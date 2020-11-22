package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.niit.pojo.SBookList;
import com.niit.pojo.UserAddress;
import com.niit.service.UserService;

@Controller
@RequestMapping("/user2")
public class UserController2 {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "addaddress",produces ="text/html;charset=utf-8")
	@ResponseBody
	public String AddUserAddress(String auserid,String ausername,String ausertel,String address) {		
		userService.AddAddress(auserid, ausername, ausertel, address);
		String data = "添加成功！";
		return data;
	}
	
	@RequestMapping("/selectuseraddress")
	@ResponseBody
	public UserAddress SelectUserAddress(String auseraddressid) {
		UserAddress userAddress = userService.SelectUserAddressById(auseraddressid);
		return userAddress;
	}
	
}

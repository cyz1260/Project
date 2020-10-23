  package com.niit.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.niit.pojo.User;
import com.niit.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userservice;
	
//	@ResponseBody
	@RequestMapping("/showuser")
	public String showUser(Map<String, Object> data) {
		User user = userservice.getUserInfo();
		data.put("user", user);
		return "/WEB-INF/jsps/main.jsp";
		
	}

}

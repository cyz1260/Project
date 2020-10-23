package com.niit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.mapping.UserMapping;
import com.niit.pojo.User;

@Service
public class UserService {
	
	@Autowired
	private UserMapping userMapping;
	
	public User getUserInfo() {
		return userMapping.selectById(1);
	}

}

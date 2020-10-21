package com.niit.mapping;

import java.util.List;

import com.niit.pojo.User;

public interface UserMapping {
	
	public User selectById(int id);
	
	public List<User> selectAllUser();

}

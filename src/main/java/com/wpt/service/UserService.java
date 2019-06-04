package com.wpt.service;

import com.wpt.bean.User;

public interface UserService {
	public int delete(Integer uid);

	public int add(User record);

	

	public int update(User record);

	public User getUserById(int userId);

	public User findUserByName(String username);

	public User login(User user);

	public User findUserByEmail(String email);
}
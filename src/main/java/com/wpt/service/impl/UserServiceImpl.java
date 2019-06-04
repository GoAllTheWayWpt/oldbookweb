package com.wpt.service.impl;

import javax.annotation.Resource;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wpt.bean.User;
import com.wpt.dao.UserMapper;
import com.wpt.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Resource
	private UserMapper userMapper;
	@Override
	public  User getUserById(int userId) {
		return this.userMapper.selectByPrimaryKey(userId);  
	}
	@Override
	public int delete(Integer uid) {
		return this.userMapper.deleteByPrimaryKey(uid);
	}
	@Override
	public int add(User record) {
		return this.userMapper.insert(record);
	}
	@Override
	public int update(User record) {
		return this.userMapper.updateByPrimaryKeySelective(record);
	}
	@Override
	public User findUserByName(String username) {
		return this.userMapper.selectByPrimaryName(username);  
	}
	@Override
	public User login(User user) {
		return this.userMapper.login(user);
	}
	@Override
	public User findUserByEmail(String email) {
		return this.userMapper.selectByPrimaryEmail(email);
	}   

}

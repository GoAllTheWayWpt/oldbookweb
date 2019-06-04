package com.wpt.dao;

import com.wpt.bean.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer uid);

    int insert(User record);

    int insertSelective(User record);


    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    User selectByPrimaryKey(Integer uid);
    User selectByPrimaryName(String username);
    User selectByPrimaryEmail(String email);
    
    User login(User user);
}
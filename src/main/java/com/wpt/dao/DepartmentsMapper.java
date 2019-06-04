package com.wpt.dao;

import com.wpt.bean.Departments;

public interface DepartmentsMapper {
    int deleteByPrimaryKey(Integer did);

    int insert(Departments record);

    int insertSelective(Departments record);

    Departments selectByPrimaryKey(Integer did);

    int updateByPrimaryKeySelective(Departments record);

    int updateByPrimaryKey(Departments record);
}
package com.wpt.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wpt.bean.Book;
import com.wpt.bean.PageBean;

public interface BookMapper {
	int deleteByPrimaryKey(Integer bid);

	int insert(Book record);

	int insertSelective(Book record);

	Book selectByPrimaryKey(Integer bid);

	int updateByPrimaryKeySelective(Book record);

	int updateByPrimaryKey(Book record);

	List<Book> findProductsList();

	Integer findCountByType(String type);
	 
			   
	List<Book> searchProducts(@Param("searchBase") String searchBase, @Param("pages")PageBean pages);
	List<Book> findProductsByTypePage(@Param("type") String type, @Param("pages")PageBean pages);
	List<Book> findProductsListPage(PageBean pages);

	Integer findCount();

	List<Book> findProductsListByUid(Integer uid);
	
}
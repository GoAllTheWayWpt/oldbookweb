package com.wpt.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wpt.bean.Book;
import com.wpt.bean.PageBean;

public interface BookService {

	public int insert(Book record);

	public int insertSelective(Book record);

	public List<Book> findProductsList();

	public Book findProductById(int bid);

	public int delProduct(int bid);

	public int updateProduct(Book bo);

	public int saveProduct(Book bo);

	public Integer findCountByType(String type);



	public Integer findCount();


	public List<Book> findProductsListByUid(Integer uid);

	List<Book> findProductsListPage(PageBean page);
	List<Book> searchProducts( String searchBase, PageBean pages);
	public List<Book> findProductsByTypePage(String type, PageBean pages);
	
}
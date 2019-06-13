package com.wpt.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wpt.bean.Book;
import com.wpt.bean.PageBean;
import com.wpt.dao.BookMapper;
import com.wpt.service.BookService;
@Service("bookService")
public class BookServiceImpl implements BookService {

	@Resource
	BookMapper bookMapper;
	@Override
	public int insert(Book bo) {
		return bookMapper.insert(bo);
	}

	@Override
	public int insertSelective(Book bo) {
		return bookMapper.insertSelective(bo);
	}

	@Override
	public List<Book> findProductsList() {
		return bookMapper.findProductsList();
	}

	@Override
	public Book findProductById(int bid) {
		return bookMapper.selectByPrimaryKey(bid);
	}

	@Override
	public int  delProduct(int bid) {
		return bookMapper.deleteByPrimaryKey(bid);
	}

	@Override
	public int updateProduct(Book bo) {
		return bookMapper.updateByPrimaryKeySelective(bo);
	}

	@Override
	public int saveProduct(Book bo) {
		return bookMapper.insertSelective(bo);
	}

	@Override
	public List<Book> findProductsByType(String type) {
		return bookMapper.findProductsByType(type);
	}

	

	@Override
	public Integer findCount() {
		return bookMapper.findCount();
	}

	

	@Override
	public List<Book> findProductsListByUid(Integer uid) {
		// TODO Auto-generated method stub
		return bookMapper.findProductsListByUid(uid);
	}

	@Override
	public List<Book> findProductsListPage(PageBean page) {
		// TODO Auto-generated method stub
		return bookMapper.findProductsListPage(page);
	}

	@Override
	public List<Book> findProductsByTypePage(String type, PageBean pages) {
//		HashMap<String,Object> params = new HashMap<String,Object>();
//		params.put("pages", pages);
//		params.put("type", type);
//		System.out.println(params);
		return bookMapper.findProductsByTypePage(type, pages);
	}

	@Override
	public List<Book> searchProducts(String searchBase, PageBean pages) {
		System.out.println(searchBase);
		System.out.println(pages.getPageNum()+"  "+pages.getPageSize());
		return this.bookMapper.searchProducts(searchBase, pages);
	}

	

	@Override
	public int findCountByType(String type) {
		// TODO Auto-generated method stub
		return this.bookMapper.findCountByType(type);
	}

	

	

	

}

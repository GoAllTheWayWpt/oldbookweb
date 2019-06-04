package com.wpt.oldbookweb_1;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.wpt.bean.Book;
import com.wpt.bean.PageBean;
import com.wpt.service.BookService;
import com.wpt.service.impl.BookServiceImpl;

public class App {

	@Autowired
	BookService bookservice = new BookServiceImpl();
	@Test
	public void test() {
		System.out.println(bookservice);
		String searchBase ="人民";
		PageBean pages = new PageBean();
		pages.setPageSize(6);
		pages.setPageNum(0);
		List<Book> bs = bookservice.findProductsList();
		for(Book b:bs) {
			System.out.println(b.toString());
		}
	}

}

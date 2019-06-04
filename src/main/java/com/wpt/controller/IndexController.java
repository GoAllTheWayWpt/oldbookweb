package com.wpt.controller;

import java.io.IOException;

import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wpt.bean.Book;
import com.wpt.bean.PageBean;
import com.wpt.bean.User;
import com.wpt.service.BookService;

@Controller
public class IndexController {
	@Autowired
	private BookService bookService;

	
	@RequestMapping("/showIndex")
	public String showIndex(Model model,Integer page) {	
		System.out.println("showIndex");
		List<Book> bookss = bookService.findProductsList();
		int end = 6;
		if(bookss.size()<6) {
			end = bookss.size();
		}
		//创建pageBean的对象，设置页面信息
		PageBean pages = new PageBean();
		int start = 0;
		
		pages.setPageNum(start);
		pages.setPageSize(end);
		//model.addAttribute("pages", pages);
		//调用具有分页功能的查询商品方法
		List<Book> books = bookService.findProductsListPage(pages);
		model.addAttribute("productsList",books);
		for(Book b:books) {
			System.out.println(b.toString());
		}
		//request.setAttribute("productList", books);
		return "index";
	}

	@RequestMapping("showAdminIndex")
	public String showAdminIndex(HttpServletRequest request) {
		HttpSession session = request.getSession();
		System.out.println(session);
		// 获取session中登录的用户对象
		User user = (User) session.getAttribute("user");
		if (user == null) {
			return "index";
		} else {
			return "admin/index";
		}
	}


}

package com.wpt.controller;

import java.io.File;


import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.wpt.bean.Book;
import com.wpt.bean.PageBean;
import com.wpt.bean.User;
import com.wpt.service.BookService;
import com.wpt.service.UserService;
import com.wpt.utils.DateUtils;
import com.wpt.utils.DeleteFileUtils;
import com.wpt.utils.UUIDUtils;
import com.wpt.utils.UploadUtils;

@Controller
public class BookController {
	@Autowired
	private BookService bookService;
	@Autowired
	private UserService userService;

	// 打开商品管理页面
	@RequestMapping("showProductList")
	public String showProductList(HttpServletRequest request, Model model) {
		System.out.println("showProductList");
		// 获取session
		HttpSession session = request.getSession();
		System.out.println(session);
		// 获取session中登录的用户对象
		User user = (User) session.getAttribute("user");
		if (user == null) {
			return "index";
		} else {

			// 查询所有的商品
			List<Book> productslist = bookService.findProductsListByUid(user.getUid());

			// 将查询的商品传递到页面中显示
			// 相当于request.setAttribute
			model.addAttribute("productslist", productslist);
			for (Book b : productslist) {
				System.out.println(b.toString());
			}
			return "admin/product";
			// 返回到后台管理界面的列表
		}
	}

	// 打开添加商品的页面
	@RequestMapping("showAddProduct")
	public String showAddProduct() {
		System.out.println("showAddProduct");
		return "admin/addProduct";
	}

	// 添加商品
//	
	@RequestMapping("saveProduct")
	public String saveProduct(HttpServletRequest request, String content, Book bo, MultipartFile imgpic) {
		// System.out.println("添加商品"+content);
		String upload = UploadUtils.upload(imgpic);
		System.out.println(imgpic);
		bo.setImageUrl(upload);
		HttpSession session = request.getSession();
		System.out.println(session);
		// 获取session中登录的用户对象
		User user = (User) session.getAttribute("user");
		if (user != null) {

			System.out.println(user.toString());
		}

		System.out.println(bo.toString());
		bo.setDetailsUrl(content);
		bo.setUid(user.getUid());

		bookService.saveProduct(bo);
		System.out.println(bo);
		// System.out.println(imageUrl.getOriginalFilename());
		return "redirect:showProductList";
	}

	// 删除商品
	@RequestMapping("delProduct")
	public String delProduct(String bid) {
		System.out.println(bid);
		// 调用service删除
		Book book = bookService.findProductById(Integer.parseInt(bid));

		bookService.delProduct(Integer.parseInt(bid));
		return "redirect:showProductList";
	}

	// 打开修改商品的页面
	@RequestMapping("showEditProduct")
	public String showEditProduct(String bid, Model model) throws ParseException {
		System.out.println("修改商品");
		// 查询要修改的商品
		System.out.println(bid);
		Book book = bookService.findProductById(Integer.parseInt(bid));

		System.out.println(book);
		// 将商品传到页面展示数据
		model.addAttribute("product", book);
		return "admin/editProduct";
	}

	// 修改商品
	@RequestMapping("updateProduct")
	public String updateProduct(Book bo, String content) {
		System.out.println("上传文件");
		// 判断是否有上传的文件
		bo.setDetailsUrl(content);
		bookService.updateProduct(bo);
		return "redirect:showProductList";
	}

	// 打开商品展示的页面
	@RequestMapping("showAllProducts")
	public String showAllProducts(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("商品展示");

		// 得到总书本数
		int total = bookService.findCount();
		int count = 6;

		// 创建pageBean的对象，设置页面信息
		PageBean pages = new PageBean();
		int start = 0;
		try {

			start = Integer.parseInt(request.getParameter("start"));
		} catch (NumberFormatException e) {

		}
		int next = start + count;
		int pre = start - count;
		int last;
		if (0 == total % count) {
			last = total - count;
		} else {
			last = total - total % count;
		}
		start = start < 0 ? 0 : start;
		pre = pre < 0 ? 0 : pre;
		next = next > last ? last : next;
		pages.setPageNum(start);
		pages.setPageSize(count);

		request.setAttribute("next", next);
		request.setAttribute("pre", pre);
		request.setAttribute("last", last);
		// 查询要显示的类型的商品
		List<Book> bookList = bookService.findProductsListPage(pages);

		// 将商品传递到页面中展示
		request.setAttribute("productsList", bookList);
		return "productkinds";
	}

	// 按类型找出图书界面
	@RequestMapping("showProductsByType")
	public String showProductsType(HttpServletRequest request, 
			HttpServletResponse response, String type) {
		System.out.println("按类型展示" + " " + type);
	//	model.addAttribute("booktype", type);
		// 获取session
		HttpSession session = request.getSession();
		if(type!=null) {
			session.setAttribute("booktype",type);
		}else {
			type =  (String) session.getAttribute("booktype");
		}
		// 得到总书本数
		int total = bookService.findCount();
		int count = 6;

		// 创建pageBean的对象，设置页面信息
		PageBean pages = new PageBean();
		int start = 0;
		try {

			start = Integer.parseInt(request.getParameter("start"));
		} catch (NumberFormatException e) {

		}
		int next = start + count;
		int pre = start - count;
		int last;
		if (0 == total % count) {
			last = total - count;
		} else {
			last = total - total % count;
		}
		start = start < 0 ? 0 : start;
		pre = pre < 0 ? 0 : pre;
		next = next > last ? last : next;
		
		pages.setPageSize(count);
		pages.setPageNum(start);
		request.setAttribute("next", next);
		request.setAttribute("pre", pre);
		request.setAttribute("last", last);
		
		System.out.println(start+"  "+count+"  "+ type);
		// 查询要显示的类型的商品
		List<Book> bookList = bookService.findProductsByTypePage(type, pages);

		// 将商品传递到页面中展示
		request.setAttribute("productsList", bookList);
		return "productkinds";
	}
	
	// 按类型找出图书界面
	@RequestMapping("searchProducts")
	public String searchProducts(HttpServletRequest request, 
			HttpServletResponse response, String searchBase) {
		System.out.println("搜索：" + " " + searchBase);
	
		// 获取session
		HttpSession session = request.getSession();
		if(searchBase!=null) {
			session.setAttribute("booktype",searchBase);
		}else {
			searchBase =  (String) session.getAttribute("booktype");
		}
		// 得到总书本数
		int total = bookService.findCount();
		int count = 6;

		// 创建pageBean的对象，设置页面信息
		PageBean pages = new PageBean();
		int start = 0;
		try {

			start = Integer.parseInt(request.getParameter("start"));
		} catch (NumberFormatException e) {

		}
		int next = start + count;
		int pre = start - count;
		int last;
		if (0 == total % count) {
			last = total - count;
		} else {
			last = total - total % count;
		}
		start = start < 0 ? 0 : start;
		pre = pre < 0 ? 0 : pre;
		next = next > last ? last : next;
		
		pages.setPageSize(count);
		pages.setPageNum(start);
		request.setAttribute("next", next);
		request.setAttribute("pre", pre);
		request.setAttribute("last", last);
		
		System.out.println(start+"  "+count+"  "+ searchBase);
		// 查询要显示的类型的商品
		List<Book> bookList = bookService.searchProducts(searchBase, pages);

		// 将商品传递到页面中展示
		request.setAttribute("productsList", bookList);
		return "productkinds";
	}
	
	@RequestMapping("findProductById")
	public String findProductById(String bid, Model model) {
		Book book = bookService.findProductById(Integer.parseInt(bid));
		model.addAttribute("product", book);
		return "productinfo";
	}

	@RequestMapping("showProductDetails")
	public String showProductDetails(HttpServletRequest request, Model model) {
		String bid = request.getParameter("bid");
		System.out.println(bid);
		Book book = bookService.findProductById(Integer.parseInt(bid));
		model.addAttribute("product", book);
		return "productDetails";
	}

	@RequestMapping("testEditor")
	public String testEditor() {

		return "admin/editor";
	}

	@RequestMapping("testSubmit")
	public String testSubmit(String content, Model model) {
		// String text = request.getParameter("content");
		System.out.println(content);
		model.addAttribute("content", content);
		return "test";
	}
}

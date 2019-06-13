package com.wpt.filter;

import java.io.IOException;


import java.net.URLEncoder;

import java.util.regex.Pattern;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.wpt.bean.User;
import com.wpt.dao.UserMapper;
import com.wpt.service.UserService;
import com.wpt.service.impl.UserServiceImpl;
import com.wpt.utils.CookieUtils;

/**
 * 
 * @author 过滤器 每一个过滤器类应该实现filter接口 可以使用过滤器拦截所有请求，对请求进行验证，如果请求合法，放行，如果不合法，进行拦截
 *
 */

public class AutoLoginFilter implements Filter {

	private UserMapper userMapper;

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	// 在对象销毁时调用此方法

	@SuppressWarnings("null")
	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		// 验证
		System.out.println("拦截到用户请求");
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;

		// 获取session
		HttpSession session = request.getSession();
		// 获取session中登录的用户对象
		User users = (User) session.getAttribute("user");

		String uri = request.getRequestURI();

		
		String path=request.getRequestURI().substring(request.getContextPath().length());
	
		System.out.println("Url=========" + uri +"--"+path );
		String s = "";
		for (int i = 1; i < path.length(); i++) {
			if (path.charAt(i) == '/') {
				break;
			}
			s = s + path.charAt(i);
		}
		Boolean flag = false;
		//System.out.println("s===="+s);
		String[] nourl = { "bookImages","css", "font", "fonts", "images", "img", "js",
				"pic", "AmazeUI-2.4.2" ,"upload","simditor"};
		for (String s1 : nourl) {
			if (s1.equals(s)) {
				flag = true;
				break;
			}
		}
		Boolean isLogin = true;
		if (flag || users != null || uri.indexOf("index") != -1 || uri.equals("/oldbookweb_1/") 
				 || uri.indexOf("checkName")!=-1 || uri.indexOf("checkEmail")!=-1)  {
			System.out.println("是静态资源直接放行,或者users不为空，或index界面");
			chain.doFilter(req, resp);
		}

		else if (uri.indexOf("login") != -1 || uri.indexOf("showLogin") != -1
				|| uri.indexOf("reg") != -1 || uri.indexOf("showReg") != -1) {
			// 既不是登录界面也不是注册界面
			isLogin = false;
			System.out.println("是登录注册界面");
			chain.doFilter(req, resp);

		} else {
			//
			System.out.println("没有登录访问的是登录注册主页之外的界面");
			response.sendRedirect("showLogin");
		}
		
		/*
		 * System.out.println(isLogin); //如果isLogin为真是登陆或注册，或者users不为空 if (isLogin ||
		 * users != null ) { System.out.println("允许");
		 * 
		 * 
		 * if (users == null) { // 自动登录 // 获取所有cookie System.out.println("users为空");
		 * Cookie[] cookies = request.getCookies(); // 获取所需要的cookie Cookie cookie =
		 * CookieUtils.getCookie(cookies, "autologin"); if (cookie != null) { //
		 * 获取cookie中存放的用户信息 String autoLogin = cookie.getValue();
		 * System.out.println(autoLogin); // 判断cookies是否有信息，如果有 if (autoLogin != null &&
		 * !autoLogin.equals("")) { //autologin存放的用户名密码格式为“用户名-密码”，需要拆开 String[] names =
		 * autoLogin.split("-"); for (String st : names) { System.out.println(st); }
		 * User user = new User(); user.setUsername(URLEncoder.encode(names[0],
		 * "utf-8")); user.setPassword(names[1]); // 调用userMapper进行登录 User users2 =
		 * userMapper.login(user);
		 * 
		 * // 将登录的对象存放到session中 session.setAttribute("user", users2); } }else {
		 * System.out.println("users不为空"); //如果请求的是与订单的请求，要求用户必须登录
		 * if(uri.indexOf("order")!=-1||uri.indexOf("Order")!=-1){ //跳转到登录页面
		 * response.sendRedirect("showLogin"); return; } // 放行 System.out.println("放行");
		 * chain.doFilter(req, resp); } } } else {
		 * 
		 * response.sendRedirect("showLogin"); }
		 */

	}

	// 在对象创建时自动调用init方法对对象初始化
	@Override
	public void init(FilterConfig config) throws ServletException {
		// 获取spring容器
//
//		 ServletContext：代表整个web应用
//			ServletContext context = config.getServletContext();
//			ApplicationContext ac = WebApplicationContextUtils.getWebApplicationContext(context);
//			userMapper = ac.getBean(UserMapper.class);
	}

}

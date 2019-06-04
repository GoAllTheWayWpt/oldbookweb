package com.wpt.controller;

import java.io.UnsupportedEncodingException;

import java.net.URLEncoder;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wpt.bean.Book;
import com.wpt.bean.User;
import com.wpt.service.BookService;
import com.wpt.service.UserService;
import com.wpt.utils.DateUtils;
import com.wpt.utils.Md5Utils;
import com.wpt.utils.UUIDUtils;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private BookService service;
	@RequestMapping("showUser")
	public String showUser(HttpServletRequest request, Model model) {
//		int userId = Integer.parseInt(request.getParameter("id"));
		int userId = 1;
		User user = this.userService.getUserById(userId);
		model.addAttribute("user", user);
		return "showUser";

	}

	@RequestMapping("showReg")
	public String showReg(String type, HttpServletRequest request) {
		System.out.println("showReg");
		if (type != null && type.equals("1")) {
			request.setAttribute("msg", "注册成功");
		} else if (type != null && type.equals("2")) {
			request.setAttribute("msg", "验证码错误");
		} else if (type != null && type.equals("3")) {
			request.setAttribute("msg", "注册失败");
		}
		System.out.println("开始注册");
		return "redirect:showLogin#toregister";
	}

	@RequestMapping("reg")
	public String reg(User user, String password,  HttpServletRequest request) {
		System.out.println("reg");
		System.out.println(password);
		user.setRole("user");
		System.out.println(user.getEmail()+" "+user.getUsername());
		
		if(user.getEmail()==null||user.getUsername()==null||user.getPassword()==null) {
			return "redirect:showReg";
		}
		System.out.println(user.toString());

		user.setPassword(Md5Utils.md5(password));
		String uuid = UUIDUtils.getUUID();
		DateUtils dateUtils = new DateUtils(new Date());
		user.setTime(dateUtils.getNowDate());
		
		int num = userService.add(user);
		System.out.println("num="+num);
		if (num == 0) {
			return "redirect:showReg.action?type=3";
		}

		return "redirect:showLogin?type=2";
	}

	@RequestMapping("showLogin")
	public String showLogin(String type, Model model) {
		System.out.println("showLogin");
		if ("1".equals(type)) {
			model.addAttribute("msg", "用户名或密码不正确");
		} else if("2".equals(type)){
			model.addAttribute("msg", "注册成功");
		} else {
			model.addAttribute("msg", "");
			
		}

		return "login";
	}

	// 激活账号的方法
	/*
	 * @RequestMapping("activation") public String activation(String code) {
	 * //根据激活码查询用户 User user=userService.findUserByCode(code);
	 * 
	 * //将账户的状态改为1 user.setState(1); userService.updateUsers(user); return "login";
	 * }
	 */
	/**
	 * 检查邮箱是否已注册
	 * @param email
	 * @return
	 */
	@RequestMapping("checkEmail")
	@ResponseBody
	public String checkEmail(String email) {
		System.out.println("checkEmail");
		System.out.println("email=="+email);
		// 根据用户名查询是否存在该用户名
		User user = userService.findUserByEmail(email);
		// 当对象不为空，说明用户名存在
		if (user != null) {
			return "{\"msg\":\"false\"}";
		}
		return "{\"msg\":\"true\"}";
	}
	/**
	 * 检查账号名是否已存在
	 * @param username
	 * @return
	 */
	@RequestMapping("checkName")
	@ResponseBody
	public String checkName(String username) {
		System.out.println("checkName");
		System.out.println(username);
		User user = userService.findUserByName(username);

		if (user != null) {
			return "{\"msg\":\"false\"}";
		}
		return "{\"msg\":\"true\"}";
	}

	// 登录

	@RequestMapping("login")
	public String login(User user, String autologin, String remember, HttpServletResponse response,
			HttpServletRequest request,Model model) throws UnsupportedEncodingException {
		System.out.println("login");

		if (user == null) {
			return "redirect:showLogin?type=1";
		}
		//System.out.println("User"+user.toString());
		System.out.println("Remember"+"---"+remember);
		user.setPassword(Md5Utils.md5(user.getPassword()));
		User users = userService.login(user);
		if(users==null) {
			return "redirect:showLogin?type=1";
		}
		System.out.println("users"+users.toString());
		System.out.println(users.toString());
		System.out.println("User"+user.toString());
		System.out.println("登录成功");
		
		
		request.getSession().setAttribute("user", users);
		// 跳转到首页
		System.out.println("进入跳转界面逐步进入主界面"+users.getRole());


		return "redirect:showIndex";
	}

	// 退出登录
	@RequestMapping("logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("logout");
		// 删除session当中存放的登录对象
		HttpSession session = request.getSession();
		session.removeAttribute("user");
		// 销毁session
		session.invalidate();
		// 去除自动登陆的功能
		// 将自动登录cookie中的信息清空

		Cookie cookie = new Cookie("autologin", "");
		cookie.setMaxAge(0);
		response.addCookie(cookie);
		request.getSession().setAttribute("user", null);
		return "redirect:showLogin";
	}
	
	//账号信息
	@RequestMapping("member")
	public String member(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("个人信息");
		return "member";
	}
	@RequestMapping("changePassword")
	public String changePassowrd(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("修改密码");
		return "password";
	}
}
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!--将jstl标签库引入到当前的页面来  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>

<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>易书网</title>
<link rel="stylesheet" type="text/css" href="css/index.css" />
<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />



<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-3.3.1.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/check.js"></script>
<style type="text/css">
	span{
		font-size:12px;
		color:red;
	}
</style>
</head>
<body style="background: #fff url(images/bg.jpg) repeat top left;">

<div id="container_demo" >
	<a class="hiddenanchor" id="toregister"></a>
	<a class="hiddenanchor" id="tologin"></a>
	<div id="wrapper">
		<div id="login" class="animate form">
			<form  action="login"  method="post">
				<h1>登录</h1> 
				<p> 
					<label for="username" class="uname" data-icon="u" >您的用户名</label>
					<input id="username" name="username" required="required" type="text" placeholder="请输入用户名"/>
				</p>
				<p> 
					<label for="password" class="youpasswd" data-icon="p">你的密码</label>
					<input id="password" name="password" required="required" type="password" placeholder="请输入密码" />
				</p>
				<p class="keeplogin"> 
					<!--  
					<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
						<label for="loginkeeping">保持登录状态</label>
					-->
					<span style="font-size:12px;color:red;">${msg }</span>
				</p>
				<p class="login button"> 
					<input type="submit" value="登录" /> 
					
				</p>
				<p class="change_link">
					不是成员?<a href="#toregister" class="to_register">加入我们</a>
				</p>
			</form>
		</div>

		<div id="register" class="animate form">
			<form action="reg" method="post" onsubmit="return check()"
					id="registform">
				<h1>注册</h1> 
				<p> 
					<label for="username" class="uname" data-icon="u">用户名</label>
					<input id="usernameRe" name="username" required="required" 
					type="text" placeholder="用户名" onblur="checkname()"/>
									
				</p>
				
				<p> 
					<label for="email" class="youmail">邮箱
					<span >&nbsp;&nbsp;</span><span id="username_span"></span>
					</label>
					<input id="emailRe" name="email" required="required" 
					type="email" placeholder="邮箱" onblur="checkEmail()" />
				</p>
				  
				
				<p>
					<label>你的学院
					<span >&nbsp;&nbsp;</span><span id="email_span"></span>
					</label>
					<select name="" id="academy">
						<option value="">请选择你的学院</option>
						<option value="">信工工程学院</option>
						<option value="">会计学院</option>
						<option value="">外国学院</option>
						<option value="">文法学院</option>
					</select>
				</p>
				<p>
					<label>你的年级</label>
					<select name="" id="special" >
						<option value="">请选择你的年级</option>
						<option value="">2019</option>
						<option value="">2018</option>
						<option value="">2017</option>
						<option value="">2016</option>
					</select>
				</p>
				<p>
					<label>你的专业</label>
					<select name="" id="special" >
						<option value="">请选择你的专业</option>
						<option value="">教育技术学</option>
						<option value="">传播学</option>
						<option value="">广告学</option>
						<option value="">艺术学</option>
					</select>
				</p>
			
				<p> 
					<label for="password" class="youpasswd" data-icon="p">密码</label>
					<input id="passwordReg" name="password" required="required" 
					type="password" placeholder="设置密码(以字母开头,长度在6~18之间)" onblur="checkPassword()"/>
				</p>
				<p> 
					<label for="repassword" class="youpasswd" data-icon="p">确认密码
					<span >&nbsp;&nbsp;</span><span id="password_span"></span>
					</label>
					<input id="repassword" name="repassword" required="required" 
					type="password" placeholder="确认密码(以字母开头,长度在6~18之间)" onblur="checkRepassword()"/>
				</p>
				<p class="signin button"> 
					<span >&nbsp;&nbsp;</span><span id="repassword_span"></span>
					<input type="submit" value="注册"/> 
				</p>
				<p class="change_link">  
					已经是成员?<a href="#tologin" class="to_register"> 去登录 </a>
				</p>
			</form>
		</div>
		
	</div>
	
</div>
	
</body>
</html>

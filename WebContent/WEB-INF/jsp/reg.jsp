<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!--将jstl标签库引入到当前的页面来  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>易书网</title>
<link rel="stylesheet" type="text/css" href="css/index.css" />
<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/amazeui.min.css" />
<link href="${pageContext.request.contextPath }/css/dlstyle.css"
	rel="stylesheet" type="text/css" />

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

	<div id="container_demo">
	<!--  
		<a class="hiddenanchor" id="toregister"></a> <a class="hiddenanchor"
			id="tologin"></a>
			-->
		<div id="wrapper">


			<div id="register" class="animate form">
				<form action="reg" method="post" onsubmit="return check()"
					id="registform">
					<h1>注册</h1>
					<!-- <p>
						<label for="useremailsignup" class="uemail" data-icon="u">邮箱</label>
						<input  id="useremailsignup" name="useremailsignup"  required="required"						
						type="text" placeholder="请输入邮箱账号" />
					</p> -->
					<p>
						<label for="usernamesignup" class="uname" data-icon="u">用户名</label>
						<input id="usernamesignup" name="usernamesignup"
							required="required" type="text" placeholder="用户名" />
					</p>
					<p>
						<label for="tel" class="youemail">邮箱</label> <input id="tel"
							name="emailsignup" required="required" type="tel"
							placeholder="邮箱" />
					</p>
					<p>
						<label>你的大学</label> <select name="" id="college">
							<option value="">请选择你的大学</option>
							<option value="">江西师范大学</option>
							<option value="">清华大学</option>
							<option value="">北京大学</option>
							<option value="">南开大学</option>
						</select>
					</p>
					<p>
						<label>你的学院</label> <select name="" id="academy">
							<option value="">请选择你的学院</option>
							<option value="">传播学院</option>
							<option value="">文学院</option>
							<option value="">外国语学院</option>
							<option value="">软件学院</option>
						</select>
					</p>
					<p>
						<label>你的专业</label> <select name="" id="special">
							<option value="">请选择你的专业</option>
							<option value="">教育技术学</option>
							<option value="">传播学</option>
							<option value="">广告学</option>
							<option value="">艺术学</option>
						</select>
					</p>
					<p>
						<label for="passwordsignup" class="youpasswd" data-icon="p">密码</label>
						<input id="passwordsignup" name="passwordsignup"
							required="required" type="password" placeholder="密码" />
					</p>
					<p>
						<label for="passwordsignup_confirm" class="youpasswd"
							data-icon="p">确认密码</label> <input id="passwordsignup_confirm"
							name="passwordsignup_confirm" required="required" type="password"
							placeholder="确认密码" />
					</p>
					<p class="signin button">
						<input type="submit" value="注册" />
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
<!--  
<!DOCTYPE html>
<html>

<head lang="en">
<meta charset="UTF-8">
<title>注册</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/amazeui.min.css" />
<link href="${pageContext.request.contextPath }/css/dlstyle.css"
	rel="stylesheet" type="text/css">

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

<body>

	<div class="login-boxtitle">
		<a href="home/demo.html"><img alt=""
			src="${pageContext.request.contextPath }/images/logobig.png" /></a>
	</div>

	<div class="res-banner">
		<div class="res-main">
			<div class="login-banner-bg">
				<span></span><img
					src="${pageContext.request.contextPath }/images/big.jpg" />
			</div>
			<div class="login-box2">

				<div class="am-tabs" id="doc-my-tabs">
					<ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify">
						<li class="am-active"><a href="">邮箱注册</a></li>
					</ul>

					<form action="reg" method="post" onsubmit="return check()"
						id="registform">
						<div class="am-tabs-bd">
							<div class="am-tab-panel am-active">

								<div class="user-email">
									<label for="email"><i class="am-icon-envelope-o"></i></label> <input
										type="email" name="email" id="email" placeholder="请输入邮箱账号"
										onblur="checkEmail()">
								</div>
								<div>
									<span >&nbsp;&nbsp;</span>
									<span 
									id="email_span"></span>
								</div>
								<div class="user-name">
									<label for="text"><i class="am-icon-lock"></i></label> <input
										type="text" name="username" id="username" placeholder="输入用户名"
										onblur="checkname()">

								</div>
								<div>
									<span>&nbsp;&nbsp;</span>
									<span
									id="username_span"></span>
								</div>
								<div class="user-pass">
									<label for="password"><i class="am-icon-lock"></i></label> <input
										type="password" name="password" id="password"
										placeholder="设置密码(以字母开头,长度在6~18之间)" onblur="checkPassword()">
								</div>

								<div>
									<span >&nbsp;&nbsp;</span>
									<span 
										id="password_span"></span>
								</div>

								<div class="user-pass">
									<label for="passwordRepeat"><i class="am-icon-lock"></i></label>
									<input type="password" name="repassword" id="repassword"
										placeholder="确认密码(以字母开头,长度在6~18之间)" onblur="checkRepassword()">
								</div>

								<div>
									<span >&nbsp;&nbsp;</span>
									<span
									id="repassword_span"></span>
								</div>
								<div class="am-cf">
									<input type="submit" name="" value="注册"
										class="am-btn am-btn-primary am-btn-sm am-fl">
								</div>

							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="footer ">
		<div class="footer-hd ">
			<p>
				<a href="# ">恒望科技</a> <b>|</b> <a href="# ">商城首页</a> <b>|</b> <a
					href="# ">支付宝</a> <b>|</b> <a href="# ">物流</a>
			</p>
		</div>
		<div class="footer-bd ">
			<p>
				<a href="# ">关于恒望</a> <a href="# ">合作伙伴</a> <a href="# ">联系我们</a> <a
					href="# ">网站地图</a> <em>© 2015-2025 Hengwang.com 版权所有</em>
			</p>
		</div>
	</div>

</body>

</html>
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--将jstl标签库引入到当前的页面来  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
	<link rel="stylesheet" href="css/index.css"/>
	<script src="js/main.js"></script>
	<title>Document</title>
</head>
<style>
	.help-main p {
		line-height: 50px;
	}
</style>
<body >

<%@ include file="header.jsp"%>

<div class="help-wrap">
	<div class="container clearfix">
		<div class="bread">当前位置：
			<a href="index.html">首页</a> >
			<a href="member.html">个人中心</a> >
			<a href="password.html">修改密码</a>
		</div>
		<div class="help-l fl">
			<div class="help-item">
				<div class="help-item-title">个人中心
					<a href="javascript:void(0)" class="abs"></a>
				</div>
				<div class="help-item-list">
					<ul>
						<li><a href="member.html">个人信息</a></li>
						<li><a href="password.html">修改密码</a></li>
					</ul>
				</div>
			</div>
			<div class="help-item">
				<div class="help-item-title">书籍管理
					<a href="javascript:void(0)" class="abs"></a>
				</div>
				<div class="help-item-list">
					<ul>
						<li><a href="published.html">已发布</a></li>
						<li><a href="bought.html">已买书籍</a></li>
						<li><a href="publish.html">发布书籍</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="help-r fr">
			<div class="help-item-title">个人信息</div>
			<div class="help-main">
				<form action="">
					<p><span class="nice">原始密码：</span><input type="text" value=""></p>
					<p><span class="nice">新密码：</span><input type="password" value=""></p>
					<p><span class="nice">确认新密码：</span><input type="password" value=""></p>
					<input class="save" type="submit" value="确认修改"/>
				</form>
			</div>
		</div>
	</div>
</div>


<%@include file="tail.jsp" %>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<!--
<div class="top" id="item4">
	<div class="container clearfix">
		<ul class="clearfix fr">
			<c:if test="${empty user }">
					<a href="${pageContext.request.contextPath }/showLogin"
						target="_top" class="h">亲，请登录</a>
					<a href="${pageContext.request.contextPath }/showLogin#toregister" target="_top">免费注册</a>
				</c:if>
				<c:if test="${!empty user }">
					<a href="${pageContext.request.contextPath }/showLogin"
						target="_top" class="h">${user.username }</a>
					<a href="${pageContext.request.contextPath }/logout" target="_top">退出登录</a>
				</c:if>
			
			<li>
						<a href="${pageContext.request.contextPath }/showAdminIndex"
							target="_top"><i class="am-icon-user am-icon-fw"></i>图书管理</a>
						<a href="${pageContext.request.contextPath }/member"
							target="_top"><i class="am-icon-user am-icon-fw"></i>账号信息</a>
					
			</li>
		</ul>
	</div>
</div>

<div class="header">
	<div class="container clearfix">
		<div class="logo fl">
			<a href="index.html"><img src="images/logo4.png" alt=""/></a>
		</div>
		<div class="seacher fl">
			<form action="" method="post">
				<input type="text" placeholder="小伙伴，你想找什么?"/><input type="submit" value="搜 索"/>
			</form>
			<p>热门搜索：<a href="#">自行车</a> <a href="#">笔记本</a> <a href="#">散热器</a> <a href="#">考研资料</a> <a href="#">摩托车</a> <a href="#">手机</a> <a href="#">轮滑鞋</a> <a href="#">显示器</a> <a href="#">显示器</a> <a href="#">显示器</a> <a href="#">显示器</a></p>
		</div>
		<div class="mm fr clearfix">
			<a href="list.html">我要买</a>
			<a href="publish.html">我要卖</a>
		</div>
	</div>
</div>
-->
<div class="help-wrap">
	<div class="container clearfix">
		<div class="bread">当前位置：
			<a href="${pageContext.request.contextPath }/showIndex">首页</a> >
			<a href="${pageContext.request.contextPath }/member">账号信息</a> >
			<a href="${pageContext.request.contextPath }/member">个人信息</a>
		</div>
		<div class="help-l fl">
			<div class="help-item">
				<div class="help-item-title">个人中心
					<a href="javascript:void(0)" class="abs"></a>
				</div>
				<div class="help-item-list">
					<ul>
						<li><a href="${pageContext.request.contextPath }/member">个人信息</a></li>
						<li><a href="${pageContext.request.contextPath }/changePassword">修改密码</a></li>
					</ul>
				</div>
			</div>
			
		</div>
		<div class="help-r fr">
			<div class="help-item-title">个人信息</div>
			<div class="help-main">
				<form action="">
					<p><span class="nice">用户名：</span><span>2078140086</span></p>
					<p><span class="nice">昵称：</span><input type="text" value="快到碗里来"><span class="nice">联系电话：</span><input type="text" value="18219443899"></p>
					<p><span class="nice">学校：</span><input type="text" value="江西师范大学"><span class="nice">学院：</span><input type="text" value="传播学院"></p>
					<p><span class="nice">专业：</span><input type="text" value="教育技术学"><span class="nice">年级：</span><input type="text" value="大一"></p>
					<input class="save" type="submit" value="修改"/>
				</form>
			</div>
		</div>
	</div>
</div>

<%@include file="tail.jsp" %>


</body>
</html>
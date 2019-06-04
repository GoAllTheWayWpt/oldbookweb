<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<link rel="stylesheet" href="css/index.css"/>
	<script src="js/jquery-1.7.2.min.js"></script>
	<script src="js/main.js"></script>
	<title>Document</title>
</head>
<body >

<%@ include file="header.jsp"%>

<div class="list-main">
	<div class="container">
		<div class="bread" style="margin-bottom: 0;">当前位置：
			<a href="index.html">首页</a> >
			<a href="list.html">列表</a>
		</div>
		<ul class="select">
			<li class="select-list">
				<dl id="select1">
					<dt>学校：</dt>
					<dd class="select-all selected"><a href="#">全部</a></dd>
					<dd><a href="#">深圳大学</a></dd>
					<dd><a href="#">深圳技师学院</a></dd>
					<dd><a href="#">深圳广播电视大学</a></dd>
					<dd><a href="#">深圳香港中文大学</a></dd>
					<dd><a href="#">深圳市华强职业技术学校</a></dd>
					<dd><a href="#">深圳大学医学院</a></dd>
					<dd><a href="#">深圳华中科技大学研究院</a></dd>
					<dd><a href="#">深圳南方科技大学</a></dd>
				</dl>
			</li>
			<li class="select-list">
				<dl id="select2">
					<dt>学院：</dt>
					<dd class="select-all selected"><a href="#">全部</a></dd>
					<dd><a href="#">传播学院</a></dd>
					<dd><a href="#">文学院</a></dd>
					<dd><a href="#">外国语学院</a></dd>
					<dd><a href="#">软件学院</a></dd>
					<dd><a href="#">音乐学院</a></dd>
				</dl>
			</li>
			<li class="select-list">
				<dl id="select3">
					<dt>专业：</dt>
					<dd class="select-all selected"><a href="#">全部</a></dd>
					<dd><a href="#">教育技术学</a></dd>
					<dd><a href="#">传播学</a></dd>
					<dd><a href="#">广告学</a></dd>
					<dd><a href="#">不知道了</a></dd>
				</dl>
			</li>
			<li class="select-list">
				<dl id="select4">
					<dt>年级：</dt>
					<dd class="select-all selected"><a href="#">全部</a></dd>
					<dd><a href="#">大一</a></dd>
					<dd><a href="#">大二</a></dd>
					<dd><a href="#">大三</a></dd>
					<dd><a href="#">大四</a></dd>
				</dl>
			</li>
			<li class="select-result">
				<dl>
					<dt>已选条件：</dt>
					<dd class="select-no">暂时没有选择过滤条件</dd>
				</dl>
			</li>
		</ul>
		
		<div class="tabs book clearfix">
				<c:forEach items="${productsList }" var="book" varStatus="count">
				<dl>
					<dt><a href="${pageContext.request.contextPath }/showProductDetails?bid=${book.bid}">
					<img src="${book.imageUrl}" alt=""/></a></dt>
					<dd>
						<p><a href="${pageContext.request.contextPath }/showProductDetails?bid=${book.bid}">${book.bookname}</a></p>
						<p>数量：${book.number}</p>
						<p><s>价格：￥25</s> ￥${book.price}</p>
					</dd>
				</dl>
				</c:forEach>
				
			
			
			<div class="clearfix"></div>
			<div class="page clearfix">
				
				
				<a href="?start=0">[首  页]</a>
				<c:if test="${empty user }">
					
				</c:if>
				<c:if test="${!empty user }">
				
            	<a href="?start=${pre}">[上一页]</a>
				</c:if>
			
           		<a href="?start=${next}">[下一页]</a>
            	<a href="?start=${last}">[末  页]</a>
			</div>
		</div>

	</div>
</div>



<%@include file="tail.jsp" %>

</body>
</html>
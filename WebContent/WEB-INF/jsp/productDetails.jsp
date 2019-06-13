<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--将jstl标签库引入到当前的页面来  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/index.css" />
<script src="js/jquery-1.11.2.min.js"></script>
<script src="js/main.js"></script>
<script type="text/javascript" src="js/mz-packed.js"></script>
<title>Document</title>
</head>
<body>

	<%@ include file="header.jsp"%>

	<div class="main">
		<div class="container clearfix">
		 
		 <img src="images/logo01.jpg" alt="" style="width: 1200px;height: 200px;"/>
			<div class="bread">
				当前位置： <a href="">首页</a> > <a href="">教材区</a> > <a
					href="">图书详情</a>
			</div>
			
			<div class="main-left fl clearfix">
				<div class="zoom-wrap fl">
					<div id="zoom">
						<a href="" title="" class="MagicZoom"> <img class="bzoom"
							src="${product.imageUrl}" width="300" height="350" />
						</a>
					</div>
				</div>
				<div class="attr fl">
					<p>
						书名：<span>${product.bookname}</span>
					</p>
					<p>
						作者：<span>${product.author }</span>
					</p>
					<p>
						价格：<span>${product.price}</span>
					</p>
					<p>
						库存：<span>${product.number}</span>
					</p>
					<p>
						出版时间：<span>${product.pubTime}</span>
					</p>
					<p>
						出版社：<span>${product.pubHouse}</span>
					</p>
					<a href="#" class="pay">立即购买</a>
				</div>
				<div class="clearfix"></div>

				<div class="description clearfix">
					<div>
						${product.detailsUrl}
					</div>
					<c:if test="${!empty product.imageUrl_1}">
						<div align="center">
							<img src="${product.imageUrl_1}" width="600" height="750" />
						</div>
					</c:if>
					<c:if test="${!empty product.imageUrl_2 }">
						<div align="center">
							<img src="${product.imageUrl_2}" width="600" height="750" />
						</div>
					</c:if>
					
				</div>


			</div>
			<div class="main-right fr">
				<h2>同类推荐</h2>
				<div class="tj">
					<ul>
						<li class="fore1">
							<div class="p-img">
								<a href="detail.html"> <img height="150" width="auto"
									src="images/siji.jpg" class="">
								</a>
							</div>
							<div class="p-name">
								<a href="detail.html">怎探古人何所思 精神文化考古理论与实践探索 历史 何驽 正版图书</a>
							</div>
							<div class="p-price">
								<strong class="J-p-1701273745">￥146.20</strong>
							</div>
						</li>
						<li class="fore2">
							<div class="p-img">
								<a href="detail.html"> <img height="150" width="auto"
									src="images/siji.jpg" class="">
								</a>
							</div>
							<div class="p-name">
								<a href="detail.html">状元笔记教材详解 教材教辅与参考书 洪林旺丛书主编 正版图书</a>
							</div>
							<div class="p-price">
								<strong class="J-p-1701271369">￥17.80</strong>
							</div>
						</li>
						<li class="fore3">
							<div class="p-img">
								<a href="detail.html"> <img height="150" width="auto"
									src="images/siji.jpg" class="">
								</a>
							</div>
							<div class="p-name">
								<a href="detail.html">小学生满分作文 制胜宝典 教材教辅与参考书 王伟营 正版图书</a>
							</div>
							<div class="p-price">
								<strong class="J-p-1701262012">￥11.70</strong>
							</div>
						</li>
						<li class="fore4">
							<div class="p-img">
								<a href="detail.html"> <img height="150" width="auto"
									src="images/siji.jpg" class="">
								</a>
							</div>
							<div class="p-name">
								<a href="detail.html">家 小说教材教辅与参考书 巴金 正版图书</a>
							</div>
							<div class="p-price">
								<strong class="J-p-1139265913">￥10.50</strong>
							</div>
						</li>
						<li class="fore5">
							<div class="p-img">
								<a href="detail.html"> <img height="150" width="auto"
									src="images/siji.jpg" class="">
								</a>
							</div>
							<div class="p-name">
								<a href="detail.html">儿科急诊医学手册 医学 赵祥文肖政辉主编 正版图书</a>
							</div>
							<div class="p-price">
								<strong class="J-p-1681099939">￥44.10</strong>
							</div>
						</li>
					</ul>
				</div>
			</div>

		</div>
	</div>



	<%@include file="tail.jsp"%>

	<div class="full hide">
		<div class="select-book">
			<div class="clearfix">
				<button class="select">&nbsp;</button>
				<h1>点击图片选择</h1>
				<button class="send " data-counter="0">&#10004;</button>
			</div>
			<div style="text-align: center; clear: both"></div>
			<ul class="clearfix">
				<li><img src="images/book.jpg" />
					<h3>福尔摩斯探案全集1</h3></li>
				<li><img src="images/book.jpg" />
					<h3>福尔摩斯探案全集2</h3></li>
				<li><img src="images/book.jpg" />
					<h3>福尔摩斯探案全集3</h3></li>
				<li><img src="images/book.jpg" />
					<h3>福尔摩斯探案全集4</h3></li>
				<li><img src="images/book.jpg" />
					<h3>福尔摩斯探案全集5</h3></li>
				<li><img src="images/book.jpg" />
					<h3>福尔摩斯探案全集6</h3></li>
				<li><img src="images/book.jpg" />
					<h3>福尔摩斯探案全集7</h3></li>
				<li><img src="images/book.jpg" />
					<h3>福尔摩斯探案全集8</h3></li>
				<li><img src="images/book.jpg" />
					<h3>福尔摩斯探案全集9</h3></li>
				<li><img src="images/book.jpg" />
					<h3>福尔摩斯探案全集10</h3></li>
				<li><img src="images/book.jpg" />
					<h3>福尔摩斯探案全集11</h3></li>
				<li><img src="images/book.jpg" />
					<h3>福尔摩斯探案全集12</h3></li>
			</ul>
			<div class="confirm">
				<a href="#" id="confirm">确认</a> <a href="#">取消</a>
			</div>
		</div>
	</div>
</body>
</html>
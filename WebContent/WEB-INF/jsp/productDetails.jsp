<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--将jstl标签库引入到当前的页面来  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<link rel="stylesheet" href="css/index.css"/>
	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/main.js"></script>
	<script type="text/javascript" src="js/mz-packed.js"></script>
	<title>Document</title>
</head>
<body>

<%@ include file="header.jsp"%>

<div class="main">
	<div class="container clearfix">
		<div class="bread">当前位置：
			<a href="index.html">首页</a> >
			<a href="list.html">教材区</a> >
			<a href="detail.html">图书详情</a>
		</div>
		<div class="main-left fl clearfix">
			<div class="zoom-wrap fl">
				<div id="zoom">
					<a href="" title="" class="MagicZoom">
						<img class="bzoom" src="${pageContext.request.contextPath }/${product.imageUrl}" width="300" height="350" />
					</a>
				</div>
			</div>
			<div class="attr fl">
				<p>书名：<span>${product.bookname}</span></p>
				<p>所属学校：<span>江西师范大学</span></p>
				<p>所属学院：<span>传播学院</span></p>
				<p>所属专业：<span>教育技术学</span></p>
				<p>所属年级：<span>大三</span></p>
				<a href="#" class="pay">立即定制</a>
			</div>
			<div class="clearfix"></div>
			<div class="description clearfix">
				<h2>发布者描述</h2>
				<p>《PHOTOSHOP CS6中文版标准教程》是一本计算机类教程图书，针对最新版Photoshop CS6中文版进行讲解，内全面而精准，包括软件基本操作、高级操作、色彩调整、绘制与修饰图像、图层操作、通道应用、滤镜效果、动作与自动化等方面的知识，重点讲解了软件的操作方法，另外每一章都添加了“课堂练习”“行业秘籍”和“实战案例”三个补充内容，丰富了本书的知识性。最后一章详细讲解了“质感电影海报”“真实肖像插画”“房地产DM单““艺术图像封面”“沐浴乳产品包装”“个性博客首页”几个综合案例，以满足读者更高层次上的学习需求。 《PHOTOSHOP CS6中文版标准教程》由蔡克中、晓帆、王海波编写。</p>
			</div>
			<div class="description clearfix">
				<h2>发布者描述</h2>
				<p>《PHOTOSHOP CS6中文版标准教程》是一本计算机类教程图书，针对最新版Photoshop CS6中文版进行讲解，内全面而精准，包括软件基本操作、高级操作、色彩调整、绘制与修饰图像、图层操作、通道应用、滤镜效果、动作与自动化等方面的知识，重点讲解了软件的操作方法，另外每一章都添加了“课堂练习”“行业秘籍”和“实战案例”三个补充内容，丰富了本书的知识性。最后一章详细讲解了“质感电影海报”“真实肖像插画”“房地产DM单““艺术图像封面”“沐浴乳产品包装”“个性博客首页”几个综合案例，以满足读者更高层次上的学习需求。 《PHOTOSHOP CS6中文版标准教程》由蔡克中、晓帆、王海波编写。</p>
			</div>
			<div class="description clearfix">
				<h2>发布者描述</h2>
				<p>《PHOTOSHOP CS6中文版标准教程》是一本计算机类教程图书，针对最新版Photoshop CS6中文版进行讲解，内全面而精准，包括软件基本操作、高级操作、色彩调整、绘制与修饰图像、图层操作、通道应用、滤镜效果、动作与自动化等方面的知识，重点讲解了软件的操作方法，另外每一章都添加了“课堂练习”“行业秘籍”和“实战案例”三个补充内容，丰富了本书的知识性。最后一章详细讲解了“质感电影海报”“真实肖像插画”“房地产DM单““艺术图像封面”“沐浴乳产品包装”“个性博客首页”几个综合案例，以满足读者更高层次上的学习需求。 《PHOTOSHOP CS6中文版标准教程》由蔡克中、晓帆、王海波编写。</p>
			</div>
			<div class="description clearfix">
				<h2>发布者描述</h2>
				<p>《PHOTOSHOP CS6中文版标准教程》是一本计算机类教程图书，针对最新版Photoshop CS6中文版进行讲解，内全面而精准，包括软件基本操作、高级操作、色彩调整、绘制与修饰图像、图层操作、通道应用、滤镜效果、动作与自动化等方面的知识，重点讲解了软件的操作方法，另外每一章都添加了“课堂练习”“行业秘籍”和“实战案例”三个补充内容，丰富了本书的知识性。最后一章详细讲解了“质感电影海报”“真实肖像插画”“房地产DM单““艺术图像封面”“沐浴乳产品包装”“个性博客首页”几个综合案例，以满足读者更高层次上的学习需求。 《PHOTOSHOP CS6中文版标准教程》由蔡克中、晓帆、王海波编写。</p>
			</div>
			<div class="description clearfix">
				<h2>发布者描述</h2>
				<p>《PHOTOSHOP CS6中文版标准教程》是一本计算机类教程图书，针对最新版Photoshop CS6中文版进行讲解，内全面而精准，包括软件基本操作、高级操作、色彩调整、绘制与修饰图像、图层操作、通道应用、滤镜效果、动作与自动化等方面的知识，重点讲解了软件的操作方法，另外每一章都添加了“课堂练习”“行业秘籍”和“实战案例”三个补充内容，丰富了本书的知识性。最后一章详细讲解了“质感电影海报”“真实肖像插画”“房地产DM单““艺术图像封面”“沐浴乳产品包装”“个性博客首页”几个综合案例，以满足读者更高层次上的学习需求。 《PHOTOSHOP CS6中文版标准教程》由蔡克中、晓帆、王海波编写。</p>
			</div>
		</div>
		<div class="main-right fr">
			<h2>同类推荐</h2>
			<div class="tj">
				<ul>
					<li class="fore1" > <div class="p-img">  <a href="detail.html">  <img height="150" width="auto"  src="images/siji.jpg" class="">                    </a>                </div>                <div class="p-name"><a href="detail.html">怎探古人何所思  精神文化考古理论与实践探索 历史 何驽 正版图书</a></div>                <div class="p-price"><strong class="J-p-1701273745">￥146.20</strong></div>            </li>
					<li class="fore2" > <div class="p-img">  <a href="detail.html">  <img height="150" width="auto"  src="images/siji.jpg" class="">                    </a>                </div>                <div class="p-name"><a href="detail.html">状元笔记教材详解 教材教辅与参考书 洪林旺丛书主编 正版图书</a></div>                <div class="p-price"><strong class="J-p-1701271369">￥17.80</strong></div>            </li>
					<li class="fore3" > <div class="p-img">  <a href="detail.html">  <img height="150" width="auto"  src="images/siji.jpg" class="">                    </a>                </div>                <div class="p-name"><a href="detail.html">小学生满分作文 制胜宝典 教材教辅与参考书 王伟营 正版图书</a></div>                <div class="p-price"><strong class="J-p-1701262012">￥11.70</strong></div>            </li>
					<li class="fore4" > <div class="p-img">  <a href="detail.html">  <img height="150" width="auto"  src="images/siji.jpg" class="">                    </a>                </div>                <div class="p-name"><a href="detail.html">家 小说教材教辅与参考书 巴金 正版图书</a></div>                <div class="p-price"><strong class="J-p-1139265913">￥10.50</strong></div>            </li>
					<li class="fore5" > <div class="p-img">  <a href="detail.html">  <img height="150" width="auto"  src="images/siji.jpg" class="">                    </a>                </div>                <div class="p-name"><a href="detail.html">儿科急诊医学手册 医学 赵祥文肖政辉主编 正版图书</a></div>                <div class="p-price"><strong class="J-p-1681099939">￥44.10</strong></div>            </li>
				</ul>
			</div>
		</div>

	</div>
</div>



<%@include file="tail.jsp" %>

<div class="full hide">
	<div class="select-book">
		<div class="clearfix">
			<button class="select">&nbsp;</button>
			<h1>点击图片选择</h1>
			<button class="send " data-counter="0">&#10004;</button>
		</div>
		<div style="text-align:center;clear:both">

		</div>
		<ul class="clearfix">
			<li><img src="images/book.jpg"/><h3>福尔摩斯探案全集1</h3></li>
			<li><img src="images/book.jpg" /><h3>福尔摩斯探案全集2</h3></li>
			<li><img src="images/book.jpg" /><h3>福尔摩斯探案全集3</h3></li>
			<li><img src="images/book.jpg" /><h3>福尔摩斯探案全集4</h3></li>
			<li><img src="images/book.jpg" /><h3>福尔摩斯探案全集5</h3></li>
			<li><img src="images/book.jpg" /><h3>福尔摩斯探案全集6</h3></li>
			<li><img src="images/book.jpg" /><h3>福尔摩斯探案全集7</h3></li>
			<li><img src="images/book.jpg" /><h3>福尔摩斯探案全集8</h3></li>
			<li><img src="images/book.jpg" /><h3>福尔摩斯探案全集9</h3></li>
			<li><img src="images/book.jpg" /><h3>福尔摩斯探案全集10</h3></li>
			<li><img src="images/book.jpg" /><h3>福尔摩斯探案全集11</h3></li>
			<li><img src="images/book.jpg" /><h3>福尔摩斯探案全集12</h3></li>
		</ul>
		<div class="confirm">
			<a href="#" id="confirm">确认</a>
			<a href="#">取消</a>
		</div>
	</div>
</div>
</body>
</html>
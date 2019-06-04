<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--将jstl标签库引入到当前的页面来  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE >

<html lang="en">
<head>
    <meta charset="utf-8"></meta>
	<title>易书网</title>
	<link rel="stylesheet" href="css/index.css"/>
	<link rel="stylesheet" href="css/swiper3.07.min.css"/>
	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/koala.min.1.5.js"></script>
	<style>
		.swiper-container {
			width: 1100px;
			height: 300px;
			margin: 0 auto;
		}
	</style>
	
</head>
<body>
<%@ include file="header.jsp"%>

<div class="banner container">
	<img src="images/notice.png" alt="" style="width: 1200px;height: auto;"/>
	<div class="clearfix">
		<div class="about fl">
			<h1>易书网</h1>
			<img src="images/logo9.png" alt=""/>
			<p><span>易书网</span>是一个网上书商城。力求打造网上最大的中文图书借换系统二手书交换系统力求打造是是网上最大的中文图书借换系统二手书交换系统。易书网来了,让爱书的你花极小的支出(1到2元)就可以读到你喜欢的书且没有后顾之忧哦！</p>
		</div>
		<div id="fsD1" class="focus fl">
			<div id="D1pic1" class="fPic">
				<div class="fcon">
					<a href="detail.html"><img src="images/focus1.jpg" /></a>
					<span class="shadow"><a href="detail.html">便宜出售一本好书111111</a></span>
				</div>
				<div class="fcon">
					<a href="detail.html"><img src="images/focus2.jpg" /></a>
					<span class="shadow"><a href="detail.html">便宜出售一本好书222222</a></span>
				</div>
				<div class="fcon">
					<a href="detail.html"><img src="images/focus3.jpg" /></a>
					<span class="shadow"><a href="detail.html">便宜出售一本好书3333333</a></span>
				</div>
				<div class="fcon">
					<a href="detail.html"><img src="images/focus4.jpg" /></a>
					<span class="shadow"><a href="detail.html">便宜出售一本好书4444444</a></span>
				</div>
				<div class="fcon">
					<a href="detail.html"><img src="images/focus5.jpg" /></a>
					<span class="shadow"><a href="detail.html">便宜出售一本好书5555555</a></span>
				</div>
			</div>

			<div class="fbg">
				<div class="D1fBt" id="D1fBt">
					<a href="javascript:void(0)" class="current"><i>1</i></a>
					<a href="javascript:void(0)"><i>2</i></a>
					<a href="javascript:void(0)"><i>3</i></a>
					<a href="javascript:void(0)"><i>4</i></a>
					<a href="javascript:void(0)"><i>5</i></a>
				</div>
			</div>
		</div>
		<div class="help fr">
			<h2>最新公告</h2>
			<ul>
				<li><a href="notice-detail.html">这是易书网最新公告1</a></li>
				<li><a href="notice-detail.html">这是易书网最新公告2</a></li>
				<li><a href="notice-detail.html">这是易书网最新公告3</a></li>
				<li><a href="notice-detail.html">这是易书网最新公告4</a></li>
				<li><a href="notice-detail.html">这是易书网最新公告5</a></li>
			</ul>
			<h2>新手帮助</h2>
			<ul>
				<li><a href="help.html">如何买书</a></li>
				<li><a href="help.html">如何买书</a></li>
				<li><a href="help.html">如何买书</a></li>
				<li><a href="help.html">如何买书</a></li>
			</ul>
		</div>
	</div>
	<div class="item clearfix" id="item1">
		<h1>分类<span></span>
			<a href="${pageContext.request.contextPath}/showAllProducts">+更多</a>
		</h1>
		<div class="list fl">
			<ul class="one">
				<li><a href="${pageContext.request.contextPath}/showProductsByType?type=novel">小说</a>					
				</li>
				<li><a href="${pageContext.request.contextPath}/showProductsByType?type=history">历史</a>
					
				</li>
				<li><a href="${pageContext.request.contextPath}/showProductsByType?type=study">教材</a>
					
				</li>
				<li><a href="${pageContext.request.contextPath}/showProductsByType?type=literature">文学</a>
					
				</li>
				<li><a href="${pageContext.request.contextPath}/showProductsByType?type=philosophy">哲学</a>
					
				</li>
				<li><a href="${pageContext.request.contextPath}/showProductsByType?type=art">艺术</a>
					
				</li>
				<li><a href="${pageContext.request.contextPath}/showProductsByType?type=politics">政治</a>
					
				</li>
				<li><a href="${pageContext.request.contextPath}/showProductsByType?type=military">军事</a>
					
				</li>
			</ul>
		</div>

		<div class="book-wrap fr">
			<div class="book clearfix">
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
			</div>
		</div>
	</div>
	
	<div class="item clearfix" id="item2">
		<h1>工具书区<span></span></h1>
		<ul class="tab clearfix">
			<li><a class="on" href="javascript:void(0)">英语四六级资料</a></li>
			<li><a href="javascript:void(0)">公务员资料</a></li>
			<li><a href="javascript:void(0)">考研资料</a></li>
			<li><a href="javascript:void(0)">雅思托福</a></li>
			<li><a href="javascript:void(0)">其他</a></li>
		</ul>
		<div class="tab0 tabs clearfix">
			<div class="book clearfix">
				<dl>
					<dt><a href="detail.html"><img src="images/siji.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">福尔摩斯探案全集</a></p>
						<p>数量：99</p>
						<p><s>价格：￥25</s> ￥7</p>
					</dd>
				</dl>
				
			</div>
		</div>
		<div class="tab1 tabs hide clearfix">
			<div class="book clearfix">
				<dl>
					<dt><a href="detail.html"><img src="images/book.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">福尔摩斯探案全集</a></p>
						<p>数量：99</p>
						<p><s>价格：￥25</s> ￥7</p>
					</dd>
				</dl>
				
			</div>

		</div>
		<div class="tab2 tabs hide clearfix">
			<div class="book clearfix">
				<dl>
					<dt><a href="detail.html"><img src="images/book.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">福尔摩斯探案全集</a></p>
						<p>数量：99</p>
						<p><s>价格：￥25</s> ￥7</p>
					</dd>
				</dl>
				
			</div>

		</div>
		<div class="tab3 tabs hide clearfix">
			<div class="book clearfix">
				<dl>
					<dt><a href="detail.html"><img src="images/book.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">福尔摩斯探案全集</a></p>
						<p>数量：99</p>
						<p><s>价格：￥25</s> ￥7</p>
					</dd>
				</dl>
				
			</div>

		</div>
		<div class="tab4 tabs hide clearfix">
			<div class="book clearfix">
				<dl>
					<dt><a href="detail.html"><img src="images/book.jpg" alt=""/></a></dt>
					<dd>
						<p><a href="detail.html">福尔摩斯探案全集</a></p>
						<p>数量：99</p>
						<p><s>价格：￥25</s> ￥7</p>
					</dd>
				</dl>
				
			</div>

		</div>
	</div>
	<div class="item clearfix" id="item3">
		<h1>分享区<span></span></h1>
		<div class="tabs book clearfix">
			<dl>
				<dt><a href="detail.html"><img src="images/book.jpg" alt=""/></a></dt>
				<dd>
					<p><a href="detail.html">福尔摩斯探案全集</a></p>
					<p>数量：99</p>
					<p><s>价格：￥25</s> ￥7</p>
				</dd>

			</dl>
			
		</div>
	</div>

</div>
<%@include file="tail.jsp" %>
<div class="fixnav">
	<ul>
		<li><a href="#" title="1">教材区</a></li>
		<li><a href="#" title="2">工具书区</a></li>
		<li><a href="#" title="3">分享区</a></li>
		<li><a href="#" title="4">返回顶部</a></li>
		<li><a  href="http://wpa.qq.com/msgrd?v=3&uin=2078140086&site=qq&menu=yes">联系客服</a></li>
	</ul>
</div>
<script type="text/javascript">
	Qfast.add('widgets', { path: "js/terminator2.2.min.js", type: "js", requires: ['fx'] });
	Qfast(false, 'widgets', function () {
		K.tabs({
			id: 'fsD1',   //焦点图包裹id
			conId: "D1pic1",  //** 大图域包裹id
			tabId:"D1fBt",
			tabTn:"a",
			conCn: '.fcon', //** 大图域配置class
			auto: 1,   //自动播放 1或0
			effect: 'fade',   //效果配置
			eType: 'click', //** 鼠标事件
			pageBt:true,//是否有按钮切换页码
			bns: ['.prev', '.next'],//** 前后按钮配置class
			interval: 3000  //** 停顿时间
		})
	})
</script>
</body>
</html>
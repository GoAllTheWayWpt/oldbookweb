<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="Generator" content="EditPlus®">
<meta name="Author" content="">
<meta name="Keywords" content="">
<meta name="Description" content="">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<title>首页</title>

<link
	href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/amazeui.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/admin.css"
	rel="stylesheet" type="text/css" />

<link href="${pageContext.request.contextPath }/basic/css/demo.css"
	rel="stylesheet" type="text/css" />

<link href="${pageContext.request.contextPath }/css/hmstyle.css"
	rel="stylesheet" type="text/css" />
<script
	src="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>

</head>
<title>Document</title>
</head>
<body>

	<div class="tuijian">
		<div class="tuijian_top">
			<h1 style="float: left;">倾情推荐</h1>
			<p style="float: right;">更多商品>></p>
		</div>
		<div class="tuijian_product" style="min-width: 750px;">
			<c:forEach items="${productList }" var="pro">

				<div style="float: left; margin: 10px 30px;">
					<h3
						style="overflow: hidden; width: 110px; text-overflow: ellipsis; white-space: nowrap;">${pro.name }</h3>
					<a href="#"> <img src="${pro.imgurl }" alt="an image"
						class="image" width="108px" height="100px">
					</a> <br> <span>价格: ￥${pro.price }</span> <br> <a
						href="${pageContext.request.contextPath }/findProductById?id=${pro.id}">查看详细</a>
					<br>
					<button
						style="background: #87520E; color: white; line-height: 15px; font-size: 13px; border-radius: 5px; border: #87520E; cursor: pointer;">加入购物车</button>
				</div>
			</c:forEach>
		</div>

		<div style="float: none; margin-top: 20px;">
			<c:if test="${pages.page gt 1}">
				<a
					href="${pageContext.request.contextPath }/showProductkinds?type=${type }&amp;page=${pages.page-1}"><button
						type="button" id="up"
						style="float: left; background: #87520E; line-height: 30px; color: white; border: 0; padding: 3px 7px; font-size: 15px; cursor: pointer;">上一页</button></a>
			</c:if>
			<c:if test="${pages.page lt pages.pageCount}">
				<a
					href="${pageContext.request.contextPath }/showProductkinds?type=${type }&amp;page=${pages.page+1}"><button
						type="button" id="down"
						style="float: right; background: #87520E; line-height: 30px; color: white; border: 0; padding: 3px 7px; font-size: 15px; cursor: pointer;">下一页</button></a>
			</c:if>
		</div>

	</div>
	<!--  
	<div class="gallery-book-list">
	<p class="gallery-book-title">
		<span>好书推荐</span> <i> / </i> <a href="http://www.kongfz.com/3/"
			target="_blank">更多</a>
	</p>
	<ul class="layer-content gallery-book-product clearfix">
		<li class="layer-slide gallery-book-slide">
			<div style="display: block; position: relative; height: 100%">
				<span class="gallery-book-list-img"> <img
					src="http://booklibimg.kfzimg.com/data/book_lib_img_v2/user/0/842b/842b94f0507dfd1cf02db5981643b7a4_0_1_0_0.jpg"
					onerror="this.src='/img/error.jpg';" alt="秋水堂论金瓶梅">
				</span>
				<div class="layer-region">
					<a href="http://item.kongfz.com/book/54207246.html" target="_blank"
						style="display: block; width: 100%; height: 100%;">
						<div class="layer-inner">
							<p>爱读《金瓶梅》，不是</p>
							<p></p>
							<p></p>
							<p></p>
							<p>
								<br />
							</p>
						</div>
					</a>
				</div>
				<a href="http://item.kongfz.com/book/54207246.html" target="_blank"
					class="gallery-book-product-text" title="秋水堂论金瓶梅">秋水堂论金瓶梅</a>
				<div class="gallery-book-author" title="田晓菲  著">田晓菲 著</div>
				<div class="gallery-book-product-price">
					<div>
						<i><span style="font-size: 14px; color: #bf7f5f;">￥</span>56.50
						</i><span>起</span>
					</div>
				</div></div></li></ul>
				-->

</body>
</html>

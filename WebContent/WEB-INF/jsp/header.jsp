<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--将jstl标签库引入到当前的页面来  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="top" id="item4">
	<div class="container clearfix">
		<ul class="clearfix fr">
			<c:if test="${empty user }">
					<a href="${pageContext.request.contextPath }/showLogin"
						target="_top" class="h">亲，请登录</a>
					<a href="${pageContext.request.contextPath }/showLogin#toregister" target="_top">免费注册</a>
				</c:if>
				<c:if test="${!empty user }">
				<!-- 账户名称 -->
					<i style="padding: 0 15px;border-right: 1px solid #666">${user.username }</i>
					<a href="${pageContext.request.contextPath }/logout" target="_top">退出登录</a>
				</c:if>
			
			<li>
						<a href=""
							target="_top"><i class="am-icon-user am-icon-fw"></i>购物车</a>
						<a href="${pageContext.request.contextPath }/member"
							target="_top"><i class="am-icon-user am-icon-fw"></i>账号信息</a>
					
			</li>
		</ul>
	</div>
</div>

<div class="header">
	<div class="container clearfix">
		<div class="logo fl">
			<a href="${pageContext.request.contextPath}/showIndex"><img src="images/logo4.png" alt=""/></a>
		</div>
		<div class="seacher fl">
			<form action="${pageContext.request.contextPath}/searchProducts" method="post">
				<input type="text" id="searchBase" name="searchBase" placeholder="小伙伴，你想找什么?"/><input type="submit" value="搜 索"/>
			</form>
			<p>热门搜索：<a href="#">红楼梦</a> <a href="#">嫌疑人X的献身</a> <a href="#">白夜行</a>  
			<a href="#">明朝那些事</a> <a href="#">子不语</a> <a href="#">无人生还</a>
			 <a href="#">尘埃落定</a> <a href="#">月亮与六便士</a> <a href="#">三体</a></p>
		</div>
		<div class="mm fr clearfix">
		
			<a href="${pageContext.request.contextPath}/showIndex">我要买书</a>
			<a href="${pageContext.request.contextPath }/showAdminIndex">我要卖书</a>
		</div>
	</div>
</div>
</body>
</html>
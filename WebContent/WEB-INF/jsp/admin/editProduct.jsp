
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--将jstl标签库引入到当前的页面来  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>商品发布</title>
	<meta name="keywords" content="">
	<meta name="description" content="">
	<link rel="shortcut icon" href="favicon.ico">
	<link href="css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
	<link href="css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
	<link href="css/plugins/iCheck/custom.css" rel="stylesheet">
	<link href="css/animate.min.css" rel="stylesheet">
	<link href="css/style.min.css?v=4.0.0" rel="stylesheet">
	<script src="js/jquery.min.js?v=2.1.4"></script>
	<script src="js/content.min.js?v=1.0.0"></script>
	<script src="js/plugins/iCheck/icheck.min.js"></script>
	<script src="js/plugins/validate/jquery.validate.min.js"></script>
	<script src="js/plugins/validate/messages_zh.min.js"></script>
	<script src="js/plugins/date/WdatePicker.js"></script>
	<script src="js/plugins/layer/layer.js"></script>
	<script type="text/javascript" src="plugins/ckeditor/ckeditor.js"></script>
	<script type="text/javascript" src="js/checkAddProducts.js"></script>
	

</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-sm-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>
							书籍管理
							<small>书籍修改</small>
						</h5>
						<div class="ibox-tools">
							<a class="collapse-link">
								<i class="fa fa-chevron-up"></i>
							</a>
						</div>
					</div>
					<div class="ibox-content">
						<form  method="post" class="form-horizontal" id="addGoodsForm" 
						action="${pageContext.request.contextPath }/updateProduct?bid=${product.bid }" 
						enctype="multipart/form-data" onsubmit="return check()">
							<!-- 商品名称输入框 -->
							<div class="form-group">
								<label class="col-sm-2 control-label">书籍名称</label>
								<div class="col-sm-4">
									<input id="bookname" name="bookname" type="text" value="${product.bookname }" class="form-control" onblur="checkname()" required="required">
									<span id="name_span"></span>
									<br />
								</div>
							</div>
							<div class="hr-line-dashed"></div>
							<!-- 商品作者输入框 -->
							<div class="form-group">
								<label class="col-sm-2 control-label">书籍作者</label>
								<div class="col-sm-4">
									<input id="author" name=author type="text" value="${product.author }" class="form-control" onblur="checkauthor()" required="required">
									<span id="author_span"></span>
									<br />
								</div>
							</div>
							<div class="hr-line-dashed"></div>
							<!-- 商品类型下拉框 -->
							<div class="form-group">
								<label class="col-sm-2 control-label">商品类型</label>
								<div class="col-sm-4">
									<select class="form-control m-b" name="category" id="category">
										<option value=null>--请选择类别--</option>
										<option value="novel">小说</option>
										<option value="literature">文学</option>
										<option value="hostory">历史</option>
										<option value="politics">政治</option>
										<option value="military">军事</option>									
										<option value="study">教材</option>
										<option value="science">科学</option>
										<option value="art">艺术</option>
										<option value="philosophy">哲学</option>
										<option value="other">其他</option>
									</select>
									<span id="category_span"></span>
								</div>
							</div>
							<div class="hr-line-dashed"></div>

							<!-- 商品价格输入框 -->
							<div class="form-group">
								<label class="col-sm-2 control-label">商品价格</label>
								<div class="col-sm-4">
									<input name="price" type="text" value="${product.price }" class="form-control" onblur="checkprice()" id="price" required="required">
									<span id="price_span"></span>
								</div>
							</div>
							<div class="hr-line-dashed"></div>


							<!-- 商品数量输入框 -->
							<div class="form-group">
								<label class="col-sm-2 control-label">商品数量</label>
								<div class="col-sm-4">
									<input id="number" name="number" type="text" value="${product.number }" class="form-control" onblur="checkpnum()" required="required">
									<span id="pnum_span"></span>
								</div>
							</div>
							<div class="hr-line-dashed"></div>

							<!-- 商品出版社输入框 -->
							<div class="form-group">
								<label class="col-sm-2 control-label">出版社</label>
								<div class="col-sm-4">
									<input name="pubHouse" type="text" value="${product.pubHouse }" class="form-control" required="required">
								</div>
							</div>
							<div class="hr-line-dashed"></div>
							<!-- 商品出版时间输入框 -->
							<div class="form-group">
								<label class="col-sm-2 control-label">出版时间</label>
								<div class="col-sm-4">
									<input name="pubTime" type="date" value="${product.pubTime }" class="form-control"
										required="required">

								</div>
							</div>
							<div class="hr-line-dashed"></div>
							<!-- 商品详情输入框 -->
							<div class="form-group">
								<label class="col-sm-2 control-label">商品详情</label>
								<div class="col-sm-7">
			<div id="div1">
			${product.detailsUrl }
        <br/>
    </div>
    <textarea hidden=true name="content" id="text1" style="width:100%; height:200px;"></textarea>
								</div>
								</div>
							</div>
							
							
							<div class="hr-line-dashed"></div>

							<div class="form-group">
								<div class="col-sm-4 col-sm-offset-2">
									<button class="btn btn-primary" type="submit" >保存</button>
									<button class="btn btn-white" type="reset">重置</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="wangEditor/release/wangEditor.min.js"></script>
    <script type="text/javascript">
        var E = window.wangEditor
        var editor = new E('#div1')
        var $text1 = $('#text1')
        editor.customConfig.onchange = function (html) {
            // 监控变化，同步更新到 textarea
            $text1.val(html)
        }
        editor.create()
        // 初始化 textarea 的值
        $text1.val(editor.txt.html())
    </script>
<script type="text/javascript">
$(function(){
	$("#category").val("${product.category}");
})
</script>
</html>
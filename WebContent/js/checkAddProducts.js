function checkimg(obj) {
	// 获取到上传文件的路径
	var filename = obj.value;
	// 只能上传图片格式的文件
	var index = filename.lastIndexOf(".");
	var name = filename.substring(filename.lastIndexOf("."));
	if (name != ".jpg" && name != ".png" && name != ".gif") {
		alert("只能上传.jpg.png.gif文件");
		obj.value = "";
	}/*
		 * else{ realPath=getPath(obj);
		 * document.getElementById("img").src=realPath; }
		 */
	else {
		uploadImg(obj)
	}
}

function uploadImg(obj) {
	// 取到file文件的本地路径，就是你电脑上的存储路径
	console.log(obj.value);

	// 获取图片数据对象
	var file = obj.files[0];

	// 获取图片名字
	console.log(obj.name);

	// 获取图片文件大小,单位为byte
	console.log(obj.size);

	var reader = new FileReader();
	reader.readAsDataURL(file);

	// 确保文件成功获取，base64数据量比较大
	reader.onload = function(event) {
		var e = event || window.event
		var img = document.getElementById("img");
		img.src = e.target.result;
		// 或者 img.src = this.result; 因为e.target == this
	}
}
function checkimg_1(obj) {
	// 获取到上传文件的路径
	var filename = obj.value;
	// 只能上传图片格式的文件
	var index = filename.lastIndexOf(".");
	var name = filename.substring(filename.lastIndexOf("."));
	if (name != ".jpg" && name != ".png" && name != ".gif") {
		alert("只能上传.jpg.png.gif文件");
		obj.value = "";
	}/*
	 * else{ realPath=getPath(obj);
	 * document.getElementById("img").src=realPath; }
	 */
	else {
		uploadImg_1(obj)
	}
}

function uploadImg_1(obj) {
	// 取到file文件的本地路径，就是你电脑上的存储路径
	console.log(obj.value);
	
	// 获取图片数据对象
	var file = obj.files[0];
	
	// 获取图片名字
	console.log(obj.name);
	
	// 获取图片文件大小,单位为byte
	console.log(obj.size);
	
	var reader = new FileReader();
	reader.readAsDataURL(file);
	
	// 确保文件成功获取，base64数据量比较大
	reader.onload = function(event) {
		var e = event || window.event
		var img = document.getElementById("img_1");
		img.src = e.target.result;
		// 或者 img.src = this.result; 因为e.target == this
	}
}
function checkimg_2(obj) {
	// 获取到上传文件的路径
	var filename = obj.value;
	// 只能上传图片格式的文件
	var index = filename.lastIndexOf(".");
	var name = filename.substring(filename.lastIndexOf("."));
	if (name != ".jpg" && name != ".png" && name != ".gif") {
		alert("只能上传.jpg.png.gif文件");
		obj.value = "";
	}/*
	 * else{ realPath=getPath(obj);
	 * document.getElementById("img").src=realPath; }
	 */
	else {
		uploadImg_2(obj)
	}
}

function uploadImg_2(obj) {
	// 取到file文件的本地路径，就是你电脑上的存储路径
	console.log(obj.value);
	
	// 获取图片数据对象
	var file = obj.files[0];
	
	// 获取图片名字
	console.log(obj.name);
	
	// 获取图片文件大小,单位为byte
	console.log(obj.size);
	
	var reader = new FileReader();
	reader.readAsDataURL(file);
	
	// 确保文件成功获取，base64数据量比较大
	reader.onload = function(event) {
		var e = event || window.event
		var img = document.getElementById("img_2");
		img.src = e.target.result;
		// 或者 img.src = this.result; 因为e.target == this
	}
}
function checkname() {
	var name = document.getElementById("name").value;
	var reg = /^[\u4E00-\u9FA5A-Za-z0-9]+$/
	var f = reg.test(name);
	if (f == false) {
		document.getElementById("name_span").innerHTML = "请输入正确的书名";
		document.getElementById("name").value = null;
		return false;
	} else {
		document.getElementById("name_span").innerHTML = "";
		return true;
	}
}
function checkauthor() {
	var name = document.getElementById("author").value;
	var reg = /^[\u4E00-\u9FA5A-Za-z0-9]+$/
		var f = reg.test(name);
	if (f == false) {
		document.getElementById("author_span").innerHTML = "请输入正确的人名";
				document.getElementById("author").value = null;
		return false;
	} else {
		document.getElementById("author_span").innerHTML = "";
		return true;
	}
}
function checkprice() {
	var price = document.getElementById("price").value;
	var reg = /(^[1-9]\d*(\.\d{1,2})?$)|(^0(\.\d{1,2})?$)/
	var f = reg.test(price);
	if (f == false) {
		document.getElementById("price_span").innerHTML = "商品价格输入格式错误";
		document.getElementById("price").value = null;
		return false;
	} else {
		document.getElementById("price_span").innerHTML = "";
		return true;
	}
}
function checkpnum() {
	var pnum = document.getElementById("pnum").value;
	var reg = /^(0|[1-9][0-9]*)$/
	var f = reg.test(pnum);
	if (f == false) {
		document.getElementById("pnum_span").innerHTML = "商品数量只允许为正整数";
		document.getElementById("pnum").value = null;
		return false;
	} else {
		document.getElementById("pnum_span").innerHTML = "";
		return true;
	}
}
function checkcategory() {

	var select = document.getElementById("category");

	// 1.如何获得当前选中的值？：
	var value = select.value;

	// 2.如何获得该下拉框所有的option的节点对象
	var options = select.options;
	// 注意：得到的options是一个对象数组

	// 5.如何获得当前选中的option的索引？
	var index = select.selectedIndex;

	// 6.如何获得当前选中的option的文本内容？
	// 从第2个问题，我们已经获得所有的option的对象数组options了
	// 又从第5个问题，我们获取到了当前选中的option的索引值
	// 所以我们只要同options[index]下标的方法得到当前选中的option了
	var selectedvalue = options[index].value;
	var selectedText = options[index].text;
	if (selectedvalue == "null") {
		document.getElementById("category_span").innerHTML = "选择一个类型";
		return false;
	} else
		document.getElementById("category_span").innerHTML = "";
	return true;
}
function check() {
	var name = checkname();
	var price = checkprice();
	var pnum = checkpnum();
	var category = checkcategory();
	if (name && price && pnum && category)
		return true;
	else
		return false;
}
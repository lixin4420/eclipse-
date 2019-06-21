<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面post方式发起AJAX请求</title>
</head>
<body>
	<form action="#" method="POST">
		用户名:<input type="text" name="username" id="username" onblur="jiaoyan()"><span id="nameDiv"></span><br>
		密码：<input type="password" name="password" id="password"><br>
		<input type="submit" value="提交">
	</form>
</body>
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	function jiaoyan(){
		//1.创建XMLHttpRequest对象
		//1.1判断是否是IE5和IE6
		if(window.XMLHttpRequest){//返回值是true时，说明是新版本的IE或者其他浏览器
			//创建xmlHttpRequest对象
			xmlHttpRequest = new XMLHttpRequest();
		}else{
			//IE5、IE6
			xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTPP");
		}
		//2.设置回调函数
		xmlHttpRequest.onreadystatechange=callback;
		//初始化XMLHttpRequest的组件
		//设置请求的URL
		var url ="UserServlet";
		xmlHttpRequest.open("POST",url,true);
		xmlHttpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
		//4.发送请求参数
		//获取提交的参数
		var data = "flag=jiaoyan&name"+$("#username").val();
		// data = "flag=jiaoyan&name=zhangsan";
		xmlHttpRequest.send(data);//对于post请求，这个地方写具体提交的参数
		//设置回调函数，服务处理完毕后，由浏览器的本函数继续处理
		function callback(){
			if(xmlHttpRequest.readyState ==4 && xmlHttpRequest.status ==200){
				var data = xmlHttpRequest.responseText;
				if(data == "ture"){
					$("#nameDiv").html("用户名已经被使用!");
				}else{
					$("#nameDiv").html("用户名可以使用");
				}
			}
		}
	}
</script>
</html>
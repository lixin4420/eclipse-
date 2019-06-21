<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form action="#" method="POST">
			用户名:<input type="text" name="username" id="username" onblur="jiaoyan()"><span id="nameDiv"></span><br>
			密码：<input type ="password" name="password" id="password"><br>
			<input type="submit" value="提交">		
		</form>
</body>	
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	function jiaoyan(){
		var name = $("#username").val();
		$.ajax({
			"url"	   : "UserServlet",					//要提交的url
			"type"     : "GET",							//发送请求的方式 get post
			"data"	   : "flag=jiaoyan&name="+name,		//要提交到服务器的数据
			"dataType" : "text",						//服务器返回的数据类型
			"success"  : callback,						//响应成功要调用的代码
			"error"    : callBackError					//请求失败要调用的代码
 		});
		function callback(data){
			if(data == "true"){
				$("#nameDiv").html("用户名已经被占用");
			}else{
				$("#nameDiv").html("用户名可以使用!");
			}
		}
		function callBackError(){
			alert("用户名校验功能失败，请联系开发者!");
		}
	}
</script>
</html>
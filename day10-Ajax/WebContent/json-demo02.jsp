<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		function initUserList(){
			$.ajax({
				"url"      :     "UserServlet",      
				"type"     :     "GET",
				"data"     :     "flag=list",
				"dataType" :     "json",
				"success"  :      callback
			});
			function callback(data){
				var biao = $("#biaoge").empty();
				biao.append("<tr><th>id1</th><th>用户名</th><th>年龄</th><th>性别</th></tr>");
				for(var i=0;i<data.length;i++){
					biao.append("<tr><th>"+data[i].id+"</th><th>"+data[i].name+"</th><th>"+data[i].age+"</th><th>"+data[i].sex+"</th></tr>");
				}
			}
		}
		initUserList();
	});
	
	
</script>
</head>
<body>
<table border="1px" id="biaoge">
	<tr>
		<th>id0</th>
		<th>用户名</th>
		<th>年龄</th>
		<th>性别</th>
	</tr>
</table>
</body>
</html>

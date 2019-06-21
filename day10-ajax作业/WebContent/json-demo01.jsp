<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>java中对象属性的赋值</h2>
	user1.id = 1;
	user1.name ="张三";
	user1.age = 18;
	user1.sex = "男";
	<br>
	user2.id = 1;
	user2.name ="张三";
	user2.age = 18;
	user2.sex = "男";
	<br>
	user3.id = 1;
	user3.name ="张三";
	user3.age = 18;
	user3.sex = "男";
	<br>
	List<User> userList = new ArrayList<User>();
	userList.add(user1);
	userList.add(user2);
	userList.add(user3);
	
	<h2>JSON中</h2>
	<div id="jsonDiv"></div>
	<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){	
			//简单JSON格式
			//定义user数据，在JSON中如下格式
			var user = {"id":1,"name":"张三","age":18,"sex":"男"};
			//在页面显示数据
			$("#jsonDiv").append("用户id:"+user.id+"<br>");
			$("#jsonDiv").append("用户名:"+user.name+"<br>");
			$("#jsonDiv").append("用户年龄:"+user.age+"<br>");
			$("#jsonDiv").append("用户性别:"+user.sex+"<br>");
			
			//定义数组
			var shuzu = ["中","美","英国","俄"];
			$("#jsonDiv").append("国家："+shuzu[0]+"<br>");
			$("#jsonDiv").append("国家："+shuzu[3]+"<br>");
			//定义JSON中存在的数组，集合
			var users = [{"id":1,"name":"张三","age":18,"sex":"男"},{"id":2,"name":"张三2","age":17,"sex":"男"},{"id":1,"name":"张三3","age":18,"sex":"男"}];
				$("#jsonDiv").append("用户1:用户id "+users[0].id+",用户名:"+users[0].name+",用户年龄:"+users[0].age+",用户性别:"+users[0].sex+"<br>");
				$("#jsonDiv").qppend("用户2:用户id:"+users[1].id+",用户名："+users[1].name+",用户年龄:"+users[1].age+",用户性别:"+users[1].sex+"<br>");
			//使用循环简化输出把users集合中的每一个元素依次输出
			$(users).each(function(){
				$("#jsonDiv").append("用户：用户id:"+this.id+",用户名:"+this.name+",用户年龄:"+this.age+",用户性别:"+this.sex+"<br>");
			});
			//更加复杂的类型
			var user2 ={"id":1,"name":"张三","age":18,"sex":"男","addressList":["北京海淀","上海浦东","天津滨海"]};
			var users2 = [{"id":1,"name":"张三","age":18,"sex":"男","addressList":["北京海淀","上海浦东","天津滨海"]},{"id":1,"name":"张三","age":18,"sex":"男","addressList":["北京海淀","上海浦东","天津滨海"]},{"id":1,"name":"张三","age":18,"sex":"男","addressList":["北京海淀","上海浦东","天津滨海"]}];
			
		});
	</script>
</body>
</html>
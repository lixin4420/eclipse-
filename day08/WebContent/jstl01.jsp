<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>JSTL-set的用法1：</h3>
	<c:set var="name" value="阿三" scope="session"/>
	${sessionScope.name }
	<br>
	
	<h3>JSTL-set的用法2</h3>
	<c:set target="${user}" property="username" value="李四"/>
	用户名：${sessionScope.user.username }
	<br>
	
	<h3>JSTL-out的用法1:</h3>
	<c:out value ="王五"/>
	<br>
	<c:out value="${user.username }"/>
	<br>
	
	<h3>JSTL-out的用法2：</h3>
	<c:out value="${user.username }" default="没有名字"/>
	<br>
	<c:out value="${user.sex }" default="没有性别"/>
	
	<h3>JSTL-out的用法3：</h3>
	<h3>保持xml格式，需要设置escapeXml="true"</h3>
	<h3>按照网页方式解析，需要设置escapeXml="false"</h3>
	<a href ="#">百度</a><br>
	<c:out value="<a href='#'>百度</a>"></c:out> <br>
	<c:out escapeXml="true" value="<a href='#'>百度</a>"></c:out> <br>
	<c:out escapeXml="false" value="<a href='#'>百度</a>"></c:out> <br>
	
	<h3>JSTL-remove的用法：</h3>
	<h3>上面设置过session域的name，值为阿三</h3>
	<h4>移除前</h4>
	<c:out value="${sessionScope.name }"></c:out><br>
	<h4>开始移除</h4>
	<c:remove var="name" scope="session"/>
	<h4>移除后</h4>
	<c:out value="${sessionScope.name }"></c:out><br>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>
<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
<script type="text/javascript" src="js/slimtable.min.js"></script>
<link rel="stylesheet" href="css/slimtable.css">
<link rel="stylesheet" href="css/site.css">
</head>
<body>
		<table
			class="table text-center table-striped table-bordered table-hover table">
			<h1 align="center">注册</h1>
			<tr align="center">
				<th>用户名</th>
				<th>密码</th>
				<th>邮箱</th>
				<th>出生日期</th>
				<th>年龄</th>
				<th>操作</th>
			</tr>
	
				<c:forEach items="${userList}" var="use">
				<tr>
					<td><a href="getAllUser?id=${use.username }">${use.username}</a></td>
					<td>${use.password}</td>
					<td>${use.email}</td>
					<td>${use.birthday}</td>
					<td>${use.age}</td>
					<td><a href="#" class="del" alt="${use.username}">删除</a></td>
					</tr>
				</c:forEach>

		</table>
	<a href="addUser">添加用户</a>
	<script type="text/javascript">
$(function() {
	$("#exampletable").slimtable();
});
</script>
</body>
</html>
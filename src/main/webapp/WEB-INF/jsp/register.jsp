<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
<style>
	.red{
		border-color:red;
	}
</style>
<script>
    $(function(){
    	$("input[name='username']").keyup(function(){
			var username = $(this).prop("value");
			$.get("checkusername",{"username":username},function(msg){
					var ul = $("<p>" + 用户名已被使用 + "</p>");
					$("input[name='username']").after(ul);
			},"json");
		});
    	$("input[name='email']").blur(function() {
			var reg=/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
			if(!reg.test($(this).val())){
				$(this).addClass("red");
			}else{
				$(this).removeClass("red");
			}
		});
    })
</script>
</head>
<body>
	<form action="insert" method="post">
		<div style="width:200" align="center">
			<h1>注册</h1>
			用户：<input type="text" class="username" name="username" value=""><br>
			密码：<input type="text" name="password" value=""><br>
			邮箱：<input type="text" name="email" value=""><br>
			出生日期：<input type="date" name="birthday" value=""><br>
			年龄：<input type="text" name="age" value=""><br>
			<input type="submit" value="提交">
		</div>
	</form>
</body>
</html>
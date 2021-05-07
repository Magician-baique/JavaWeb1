<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="./CSS/register.css"/>
</head>
<style>

</style>
<body>
	<div class="registerWindow">
	<form action="index2.jsp" method="POST" class="Into">
		<input placeholder="账号" type="text" name="userId" class="InTxt"/><br/>
		<input placeholder="密码" type="password" name="userPwd" class="InTxt"/><br/>
		<div class="black">
		<div><a>忘记密码</a></div>
		<div><a href="register.jsp">注册账号</a></div>
		</div>
		<input type="submit" value="登录" class="InTxtButton"/>
	</form>
	</div>
</body>
</html>
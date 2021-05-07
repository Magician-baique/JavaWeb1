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
	<form action="show.jsp" method="POST" class="Into">
		<input placeholder="注册账号" type="text" name="uname" class="InTxt"/><br/>
		<input placeholder="注册密码" type="password" name="upwd" class="InTxt"/><br/>
		<input placeholder="注册昵称" type="text" name="uage" class="InTxt"/><br/>
		<div class="black">
		<div><a>忘记密码</a></div>
		<div><a href="login.jsp">登录账号</a></div>
		</div>
		<input type="submit" value="注册" class="InTxtButton"/>
	</form>
	</div>
</body>
</html>
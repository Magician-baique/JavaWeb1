
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 引入文件 -->
	<jsp:useBean id="register" class="conntion.MySqlConntion" scope="session" />
	<% 
	
	//获取账号
	String name = request.getParameter("uname");
	
	//获取密码
	String password = request.getParameter("upwd");
	
	//获取昵称
	String age = request.getParameter("uage");
	
	//调用方法
	String messg = register.mysqlL(name, password, age);
	
	%>
	
	<br/>
	<script type="text/javascript">
		alert("<%=messg %>");
	</script>
</body>
</html>
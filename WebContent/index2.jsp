<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="login" class="conntion.MySqlQuery" scope="session" />
	<% 
		String name = request.getParameter("userId");
		String password = request.getParameter("userPwd");
		
		String messg = login.mysqlL(name, password);
		
		request.setAttribute("ID", login.nameY);
		request.setAttribute("Name", login.idname);
		request.setAttribute("Tesssg",messg);
	%>
	<jsp:forward page="Home.jsp"/>
</body>
</html>
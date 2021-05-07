<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<%! 
		public String showName;
		public void temp(){
			Date date = new Date();
			this.showName = "李四"+date;
		}
	%>
	
	
	<% 
		this.temp();
		String name = "姓名：";
		out.println(name+this.showName);
	%>
	
	
	<%= 
			"姓名："+showName
	%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=Utf-8"
    pageEncoding="Utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Utf-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript"></script>
	<jsp:useBean id="login" class="conntion.MySqlQuery" scope="session" />
	<%
		float purchase = login.purchase;
	%>
	
	<p>当前余额：<%=purchase%></p>
	<button id="btnPurchase">现在购买</button>
	
	<%login.purchase(668);%>
	
	<!-- 弹出购买操作信息提示框 -->
	<script type="text/javascript">
		var BtnPurchase = document.getElementById("btnPurchase");
		BtnPurchase.onclick = function(){
			alert("<%=login.Tessg%>");
		}
	</script>
</body>
</html> 
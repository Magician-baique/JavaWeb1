<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="./CSS/Home.css"/>
</head>
<body>
	
	
	<%
		//页面数据
		String imageUrl1 = "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/mac-family-compare-201810?wid=1500&hei=690&fmt=jpeg&qlt=80&op_usm=0.5,0.5&.v=1603318779000";
		String commodityName = "Mac";
		String time = new Date().toString();
		int pdy = 668;
		
		//获取传递的参数
		Object id = request.getAttribute("ID");
		Object name = request.getAttribute("Name");
		Object Tessge = request.getAttribute("Tesssg");
		
		
		//判断购买页面转向
		boolean purchase = false;
		String Url = name==null?"register.jsp":"purchase.jsp";
		Object Extp = name==null?"登录获取":"获取";

	%>
	
	<!--弹出层-->
	<div class="EjectT" id="EjectT">
		<div class="Eject">
			<div class="purchaseEjectT">购买<%=commodityName%></div>
				<div class="commodityImage">
					<img src="<%=imageUrl1 %>" alt="Mac" style="width:60%;"/>
						<div class="PersonalCenter">
							<h3><%=pdy %> RMB</h3>
							<p class="introduceFont">你将获得：Apple Mac<br/>2.0GHz Intel Core i5 4 核处理器<br/>配备 Intel Iris Plus Graphics 图形处理器<br/>1TB 存储容量<br/>最新日期<%=time%><br/></p>
							<a href="<%=Url %>"><button  class="LoginBtn"><%=Extp%></button></a>
						</div>
				</div>
				<div class="cloneEjectT2">
					<input type="button" value="关闭" class="cloneEjectT" id="cloneEjectT"/>
				</div>
		</div>
	</div>
	
	
	<!-- 顶部导航栏 -->
	<div class="TopDiv">
		<div class="TopGs">Home</div>
		<div class="TopGs">search</div>
		<div class="TopGs"><%=name==null?name="Personal Center":name%></div>
	</div>
	
	
	<!-- 热门商品 -->
	<div class="purchaseFont">
			<div>
				<div><h1 style="text-align: center;">声色俱全</h1></div>
				<div><h3>Beautiful appearance, interesting soul</h3></div>
			</div>
	</div>
	
	<!-- 购买商品 -->
	<div class="purchaseMac">
		<img src="<%=imageUrl1 %>" alt="Mac" style="width:60%;"/>
			<div>
				<div class="purchase" id="purchase">详情</div>
				<div class="purchase purchase2" id="purchase2">购买</div>
			</div>
	</div>
	<script type="text/javascript" src="./JS/Home.js"></script>
	<script type="text/javascript">
	<%if(Tessge!=null){%>
		alert("<%=Tessge %>"); 
	<%}%>
	</script>
</body>
</html>
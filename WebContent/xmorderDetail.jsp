<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta charset="UTF-8">
       <meta name="author" content="order by dede58.com"/>
	<title>小米6立即购买-小米商城</title>
	<link rel="stylesheet" type="text/css" href="./css/style.css">
  </head>
  
  <body>
<!-- start header -->
<header>
	<div class="top center">
		<div class="left fl">
			<ul>
				<li><a href="http://www.mi.com/" target="_blank">小米商城</a></li>
				<li>|</li>
				<li><a href="">MIUI</a></li>
				<li>|</li>
				<li><a href="">米聊</a></li>
				<li>|</li>
				<li><a href="">游戏</a></li>
				<li>|</li>
				<li><a href="">多看阅读</a></li>
				<li>|</li>
				<li><a href="">云服务</a></li>
				<li>|</li>
				<li><a href="">金融</a></li>
				<li>|</li>
				<li><a href="">小米商城移动版</a></li>
				<li>|</li>
				<li><a href="">问题反馈</a></li>
				<li>|</li>
				<li><a href="">Select Region</a></li>
				<div class="clear"></div>
			</ul>
		</div>
		<div class="right fr">
			<div class="gouwuche fr"><a href="XmOrderServlet?operate=xmorder&&pageChange=0">订单中心</a></div>
			<div class="fr">
				<ul>
					<% 
						String username = (String)session.getAttribute("username");
						int uid = (Integer)session.getAttribute("uid");
						if(username!=null){
					%>
							<li><%=username %></li>
							<li><a href="UserServlet?operate=selfinfo">个人中心</a></li>
							<li><a href="UserServlet?operate=logout">退出登录 </a> </li>
							
					<% }else{%>
					
							<li><a href="login.jsp" >登录</a></li>
							<li>|</li>
							<li><a href="register.jsp" >注册</a></li>
							<li>|</li>
							<li><a href="">消息通知</a></li>
					<%} %>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
	</div>
</header>
<!--end header -->

<!-- start banner_x -->
<div class="banner_x center">
	<a href="./index.html" target="_blank"><div class="logo fl"></div></a>
	<a href=""><div class="ad_top fl"></div></a>
	<div class="nav fl">
		<ul>
			<li><a href="">小米手机</a></li>
			<li><a href="">红米</a></li>
			<li><a href="">平板·笔记本</a></li>
			<li><a href="">电视</a></li>
			<li><a href="">盒子·影音</a></li>
			<li><a href="">路由器</a></li>
			<li><a href="">智能硬件</a></li>
			<li><a href="">服务</a></li>
			<li><a href="">社区</a></li>
		</ul>
	</div>
	<div class="search fr">
		<form action="GoodServlet?operate=search" method="post">
			<div class="text fl">
				<input type="text" class="shuru" name="good_name"  placeholder="小米6&nbsp;小米MIX现货">
			</div>
			<div class="submit fl">
				<input type="submit" class="sousuo" value="搜索"/>
			</div>
			<div class="clear"></div>
		</form>
		<div class="clear"></div>
	</div>
</div>
<!-- end banner_x -->


<!-- xiangqing -->
<form action="post" method="">
<div class="xiangqing">
	<div class="neirong w">
		<div class="xiaomi6 fl">订单详情</div>
		<nav class="fr">
			<li><a href="">概述</a></li>
			<li>|</li>		
			<li><a href="">变焦双摄</a></li>
			<li>|</li>
			<li><a href="">设计</a></li>
			<li>|</li>
			<li><a href="">参数</a></li>
			<li>|</li>
			<li><a href="">F码通道</a></li>
			<li>|</li>
			<li><a href="">用户评价</a></li>
			<div class="clear"></div>
		</nav>
		<div class="clear"></div>
	</div>	
</div>

<c:forEach begin="0" end="${num-1}" var="i">
<div class="jieshao mt20 w">
	<div class="left fl"><img style="width:560px;height:560px;" src="${good_img.get(i)}"></div>
<div class="right fr">
	<div class="xqxq mt20 ml20">
		<div class="top1 mt10">
			<div class="left1 fl">商品号：${cart_id.get(i)}</div>
			<div class="right1 fr">${create_time}</div>
			<div class="clear"></div>
		</div>
		<div class="bot mt20 ft20 ftbc">
			<c:choose>
				<c:when test="${order_status ==1}">
					已发货
				</c:when>
				<c:when test="${order_status ==0}">
					未发货
				</c:when>
				<c:when test="${order_status ==3}">
					已支付
				</c:when>
				<c:when test="${order_status ==2}">
					未支付
				</c:when>
			</c:choose>
		</div>
	</div>
	<div class="h3 ml20 mt20">${good_name.get(i)}</div>
	<div class="jianjie mr40 ml20 mt10">${good_desc.get(i)}</div>
				
	<div class="ft20 ml20 mt20">版本</div>
	<div class="xzbb ml20 mt10">
		<div class="banben fl">
			<a>
				${good_type.get(i)}
			</a>
		</div>
		<div class="clear"></div>
	</div>
	<div class="ft20 ml20 mt20">颜色</div>
	<div class="xzbb ml20 mt10">
		<div class="banben">
			<a>
				${good_color.get(i)}
			</a>
		</div>		
	</div>
	<div class="jiage ml20 mt10">价格：${price.get(i)}</div>

	</div>
	<div class="clear"></div>
</div>
</c:forEach>
=======
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta charset="UTF-8">
       <meta name="author" content="order by dede58.com"/>
	<title>小米6立即购买-小米商城</title>
	<link rel="stylesheet" type="text/css" href="./css/style.css">
  </head>
  
  <body>
<!-- start header -->
<header>
	<div class="top center">
		<div class="left fl">
			<ul>
				<li><a href="http://www.mi.com/" target="_blank">小米商城</a></li>
				<li>|</li>
				<li><a href="">MIUI</a></li>
				<li>|</li>
				<li><a href="">米聊</a></li>
				<li>|</li>
				<li><a href="">游戏</a></li>
				<li>|</li>
				<li><a href="">多看阅读</a></li>
				<li>|</li>
				<li><a href="">云服务</a></li>
				<li>|</li>
				<li><a href="">金融</a></li>
				<li>|</li>
				<li><a href="">小米商城移动版</a></li>
				<li>|</li>
				<li><a href="">问题反馈</a></li>
				<li>|</li>
				<li><a href="">Select Region</a></li>
				<div class="clear"></div>
			</ul>
		</div>
		<div class="right fr">
			<div class="gouwuche fr"><a href="XmOrderServlet?operate=xmorder&&pageChange=0">订单中心</a></div>
			<div class="fr">
				<ul>
					<% 
						String username = (String)session.getAttribute("username");
						int uid = (Integer)session.getAttribute("uid");
						if(username!=null){
					%>
							<li><%=username %></li>
							<li><a href="UserServlet?operate=selfinfo">个人中心</a></li>
							<li><a href="UserServlet?operate=logout">退出登录 </a> </li>
							
					<% }else{%>
					
							<li><a href="login.jsp" >登录</a></li>
							<li>|</li>
							<li><a href="register.jsp" >注册</a></li>
							<li>|</li>
							<li><a href="">消息通知</a></li>
					<%} %>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
	</div>
</header>
<!--end header -->

<!-- start banner_x -->
<div class="banner_x center">
	<a href="./index.html" target="_blank"><div class="logo fl"></div></a>
	<a href=""><div class="ad_top fl"></div></a>
	<div class="nav fl">
		<ul>
			<li><a href="">小米手机</a></li>
			<li><a href="">红米</a></li>
			<li><a href="">平板·笔记本</a></li>
			<li><a href="">电视</a></li>
			<li><a href="">盒子·影音</a></li>
			<li><a href="">路由器</a></li>
			<li><a href="">智能硬件</a></li>
			<li><a href="">服务</a></li>
			<li><a href="">社区</a></li>
		</ul>
	</div>
	<div class="search fr">
		<form action="GoodServlet?operate=search" method="post">
			<div class="text fl">
				<input type="text" class="shuru" name="good_name"  placeholder="小米6&nbsp;小米MIX现货">
			</div>
			<div class="submit fl">
				<input type="submit" class="sousuo" value="搜索"/>
			</div>
			<div class="clear"></div>
		</form>
		<div class="clear"></div>
	</div>
</div>
<!-- end banner_x -->


<!-- xiangqing -->
<form action="post" method="">
<div class="xiangqing">
	<div class="neirong w">
		<div class="xiaomi6 fl">订单详情</div>
		<nav class="fr">
			<li><a href="">概述</a></li>
			<li>|</li>		
			<li><a href="">变焦双摄</a></li>
			<li>|</li>
			<li><a href="">设计</a></li>
			<li>|</li>
			<li><a href="">参数</a></li>
			<li>|</li>
			<li><a href="">F码通道</a></li>
			<li>|</li>
			<li><a href="">用户评价</a></li>
			<div class="clear"></div>
		</nav>
		<div class="clear"></div>
	</div>	
</div>

<%
	Integer num = Integer.parseInt(request.getAttribute("num").toString());
	Integer order_id = Integer.parseInt(request.getAttribute("order_id").toString());
	Integer order_status = Integer.parseInt(request.getAttribute("order_status").toString());
	
	ArrayList<String> cart_id = (ArrayList<String>) request.getAttribute("cart_id");
	ArrayList<Double> price = (ArrayList<Double>) request.getAttribute("price");
	String create_time = (String)request.getAttribute("create_time");
		
	ArrayList<String> good_name = (ArrayList<String>)request.getAttribute("good_name");
	ArrayList<String> good_type = (ArrayList<String>)request.getAttribute("good_type");
	ArrayList<String> good_color = (ArrayList<String>)request.getAttribute("good_color");
	ArrayList<String> good_img = (ArrayList<String>)request.getAttribute("good_img");
	ArrayList<String> good_desc = (ArrayList<String>)request.getAttribute("good_desc"); 
	
	for(int i = 0; i < num ; i++){			
%>

<div class="jieshao mt20 w">
	<div class="left fl"><img style="width:560px;height:560px;" src=<%=good_img.get(i) %>></div>
<div class="right fr">
	<div class="xqxq mt20 ml20">
		<div class="top1 mt10">
			<div class="left1 fl">商品号：<%=cart_id.get(i) %></div>
			<div class="right1 fr"><%=create_time %></div>
			<div class="clear"></div>
		</div>
		<div class="bot mt20 ft20 ftbc">
			<% if(order_status == 1) { %>
				已发货
			<%	} else if(order_status == 0) {%>
				未发货
			<%	} else if(order_status == 3) {%>
				已支付
			<%	} else if(order_status == 2) {%>
				未支付
			<%	} %>
		</div>
	</div>
	<div class="h3 ml20 mt20"><%=good_name.get(i) %></div>
	<div class="jianjie mr40 ml20 mt10"><%=good_desc.get(i) %></div>
				
	<div class="ft20 ml20 mt20">版本</div>
	<div class="xzbb ml20 mt10">
		<div class="banben fl">
			<a>
				<%=good_type.get(i) %>
			</a>
		</div>
		<div class="clear"></div>
	</div>
	<div class="ft20 ml20 mt20">颜色</div>
	<div class="xzbb ml20 mt10">
		<div class="banben">
			<a>
				<%=good_color.get(i) %>
			</a>
		</div>		
	</div>
	<div class="jiage ml20 mt10">价格：<%=price.get(i) %></div>

	</div>
	<div class="clear"></div>
</div>
	<%} %>
>>>>>>> branch 'master' of https://github.com/footer-cmd/XiaoMi

</form>
<!-- footer -->
	<footer class="mt20 center">		
		<div class="mt20">小米商城|MIUI|米聊|多看书城|小米路由器|视频电话|小米天猫店|小米淘宝直营店|小米网盟|小米移动|隐私政策|Select Region</div>
		<div>©mi.com 京ICP证110507号 京ICP备10046444号 京公网安备11010802020134号 京网文[2014]0059-0009号</div> 
		<div>违法和不良信息举报电话：185-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</div>
	</footer>
  </body>
</html>

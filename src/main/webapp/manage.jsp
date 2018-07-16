<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'manage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){

	$("#firstpane .menu_body:eq(0)").show();
	$("#firstpane h3.menu_head").click(function(){
		$(this).addClass("current").next("div.menu_body").slideToggle(300).siblings("div.menu_body").slideUp("slow");
		$(this).siblings().removeClass("current");
	});
	
	$("#secondpane .menu_body:eq(0)").show();
	$("#secondpane h3.menu_head").mouseover(function(){
		$(this).addClass("current").next("div.menu_body").slideDown(500).siblings("div.menu_body").slideUp("slow");
		$(this).siblings().removeClass("current");
	});
	
});
</script>

<style type="text/css">
iframe{
	border: 0px;
	position: absolute;
	top: auto;
	left: 300px;
	width: 1000px;
	height: 1000px;
	scrolling:no;
}
section{
	background-color: lightgray;
	position: absolute;
	top: auto;
	left: 10px;
}
.menu_list{width:268px;margin:0 auto;}
.menu_head{
	height: 47px;
	line-height: 47px;
	padding-left: 38px;
	font-size: 14px;
	color: #525252;
	cursor: pointer;
	border-left: 1px solid #e1e1e1;
	border-right: 1px solid #e1e1e1;
	border-bottom: 1px solid #e1e1e1;
	border-top: 1px solid #F1F1F1;
	position: relative;
	margin: 0px;
	font-weight: bold;
	background: #f1f1f1 url(images/pro_left.png) center right no-repeat;
}
.menu_list .current{background:#f1f1f1 url(images/pro_down.png) center right no-repeat;}
.menu_body{
	line-height: 38px;
	border-left: 1px solid #e1e1e1;
	backguound: #fff;
	border-right: 1px solid #e1e1e1;
	
}
.menu_body a{display:block;height:38px;line-height:38px;padding-left:38px;color:#777777;background:#fff;text-decoration:none;border-bottom:1px solid #e1e1e1;}
.menu_body a:hover{text-decoration:none;}
</style>

</head>
<header>



</header>
<body>
<section>
<div id="firstpane" class="menu_list">
	<h3 class="menu_head">已买到的宝贝</h3>
	<div style="display: none;" class="menu_body">
		<a href="order.html">订单中心</a>
		<a href="javascript:void(0);">我的订单</a>
		<a href="javascript:void(0);">团购订单</a>
		<a href="javascript:void(0);">我的预售</a>
		<a href="javascript:void(0);">评价晒单</a>
		<a href="javascript:void(0);">取消订单记录</a>
		<a href="javascript:void(0);">我的常购商品</a>
	</div>
	
	<h3 class="menu_head current">关注中心</h3>
	<div style="display: none;" class="menu_body">
		<a href="javascript:void(0);">关注的商品</a>
		<a href="javascript:void(0);">关注的店铺</a>
		<a href="javascript:void(0);">关注的品牌</a>
		<a href="javascript:void(0);">关注的活动</a>
		<a href="javascript:void(0);">我的足迹</a>
	</div>
		
	<h3 class="menu_head">资产中心</h3>
	<div style="display:none" class="menu_body">
		<a href="javascript:void(0);">优惠劵</a>
	</div>
	
	<h3 class="menu_head">特色服务</h3>
	<div style="display:none" class="menu_body">
		<a href="javascript:void(0);">代下单</a>
	</div>
	
    	<h3 class="menu_head">客户服务</h3>
	<div style="display:none" class="menu_body">
		<a href="javascript:void(0);">退款维权</a>
		<a href="javascript:void(0);">价格保护</a>
		<a href="javascript:void(0);">意见建议</a>
		<a href="javascript:void(0);">我的问答</a>
		<a href="javascript:void(0);">购买咨询</a>
		<a href="javascript:void(0);">交易纠纷</a>
		<a href="javascript:void(0);">我的发票</a>
		<a href="javascript:void(0);">举报中心</a>
	</div>
	
	<h3 class="menu_head">设置</h3>
	<div style="display:none" class="menu_body">
		<a href="javascript:void(0);">个人设置</a>
		<a href="javascript:void(0);">收货地址</a>
	</div>	
</div>
</section>
<div>
<iframe id="main" src="getallorder.do?id=${sessionScope.member.id}">
	
</iframe>
</div>
</body>
</html>
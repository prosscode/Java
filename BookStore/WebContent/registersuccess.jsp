<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>跳转中...</title>
<link rel="stylesheet" href="css/main.css" type="text/css" />
<script type="text/javascript">
	var t = 5; 
	function countDown(){ 
	var time = document.getElementById("time"); 
	t--; 
	time.value=t; 
	if (t<=0) { 
		location.href="http://120.77.252.0:8085/BookStore/login.jsp";
		clearInterval(inter); 
	}; 
} 
var inter = setInterval("countDown()",1000); 
</script>
</head>

<body onload="countDown()">

	<div id="divcontent" style="width: 500px;height: 500px;margin:0 auto; margin-top: 70px">
		<table border="0" cellspacing="0">
			<tr>
				<td style="font-weight:bold; color:#FF0000; text-align: center;">注册成功</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><a href="login.jsp">点击跳转，或<span id="time">5</span>秒后自动为您跳转到登录页面...</a></td>
			</tr>
		</table>
	</div>

</body>
</html>

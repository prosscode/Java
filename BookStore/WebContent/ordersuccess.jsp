<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>跳转中...</title>
<link rel="stylesheet" href="css/main.css" type="text/css" />
<script type="text/javascript">
	var t = 5; 
	function countDown(){ 
	var time = document.getElementById("time"); 
	t--; 
	time.value=t; 
	if (t<=0) { 
		location.href="http://120.77.252.0:8085/BookStore/books.jsp";
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
				<td style="font-weight:bold; color:#FF0000; text-align: center;">购物车结算成功</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><a href="books.jsp">点击跳转，或<span id="time">5</span>秒后自动为您跳转到主页...</a></td>
			</tr>
		</table>
	</div>

</body>
</html>
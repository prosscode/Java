<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>head</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='https://fonts.googleapis.com/css?family=Maven+Pro:400,900,700,500' rel='stylesheet' type='text/css' />
<!--- start-mmmenu-script---->
<script src="js/jquery.min.js" type="text/javascript"></script>
<link type="text/css" rel="stylesheet" href="css/jquery.mmenu.all.css" />
<script type="text/javascript" src="js/jquery.mmenu.js"></script>
<script type="text/javascript">
	//	The menu on the left
	$(function() {
		$('nav#menu-left').mmen
	});
</script>
<!-- start slider -->
<link href="css/slider.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery.eislideshow.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	$(function() {
		$('#ei-slider').eislideshow({
			animation : 'center',
			autoplay : true,
			slideshow_interval : 3000,
			titlesFactor : 0
		});
	});
</script>
<!-- 底部点击图标缓慢上升到页面顶部 -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1200);
		});
	});
</script>

</head>

<body>
	<!-- start header -->
	<div class="top_bg">
		<div class="wrap">
			<div class="header">
				<div class="logo">
					<a href="index.jsp"><img src="images/logo.jpg" alt="" /></a>
				</div>
				<div class="log_reg">
					
					<c:if test="${ empty user}">
					<ul>
						<li><a href="login.jsp">Login</a></li>
						<span> | </span>
						<li><a href="register.jsp" >Register</a></li>
					</ul>
					</c:if>
					
					<c:if test="${ not empty user}">
					<ul>
						<li><a href="getBookStoreData">${user}</a></li>
						<span> | </span>
						<li><a href="removeUser">Exit</a></li>
					</ul>
					</c:if>
					
					<div class="clear"></div>
				</div>
				<div class="web_search">
					<form>
						<input type="text" value="" onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = '';}" /> 
							<input type="submit" value=" " />
					</form>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<!-- start header_btm -->
	<div class="wrap">
		<div class="header_btm">
			<div class="menu">
				<ul>
					<li><a href="index.jsp">Home</a></li>
					<li><a href="books.jsp">Books</a></li>
					<li><a href="http://pross.space">blog</a></li>
					<li><a href="contact.jsp">Contact</a></li>
					<!-- <div class="clear" ></div> -->
				</ul>
			</div>
			<div id="smart_nav">
				<a class="navicon" href="#menu-left"> </a>
			</div>
			<nav id="menu-left">
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="books.jsp">Books</a></li>
				<li><a href="http://pross.space">blog</a></li>
				<li><a href="contact.jsp">Contact</a></li>
				<div class="clear"></div>
			</ul>
			</nav>
			<div class="header_right">
				<ul>
					<li><a href="cart.jsp"><i class="cart"></i><span>0</span></a></li>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</body>
</html>
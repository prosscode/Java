<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!--- start-mmmenu-script---->
	<script src="js/jquery.min.js" type="text/javascript"></script>
		<script type="text/javascript">
			//	The menu on the left
			$(function() {
				$('nav#menu-left').mmenu();
			});
		</script>
</head>
<body>
	<jsp:include page="head.jsp" />
	<!-- start top_bg -->
	<div class="top_bg">
		<div class="wrap">
			<div class="main_top">
				<h2 class="style">our Books</h2>
			</div>
		</div>
	</div>
	<!-- start main -->
	<div class="main_bg">
		<div class="wrap">
			<div class="main">
				<div class="top_main">
					<h2>new books on sale</h2>
					<a href="#">show all</a>
					<div class="clear"></div>
				</div>
				<!-- start grids_of_3 -->
				<div class="grids_of_3">
					<div class="grid1_of_3">
						<a href="details?bookId=1"> <img src="images/books/core-java-2.jpg" alt="" />
								<h3>Java核心技术Ⅱ</h3> <span class="price">$109</span></a>
					</div>
					<div class="grid1_of_3">
						<a href="details?bookId=2"> <img src="images/books/java-net.jpg" alt="" />
								<h3>Java网络编程</h3> <span class="price">$69</span> <span
								class="price1 bg">on sale</span></a>
					</div>
					<div class="grid1_of_3">
						<a href="details?bookId=3"> <img src="images/books/spring.jpg" alt="" />
								<h3>Spring源码解析</h3> <span class="price">$39</span></a>
					</div>
					<div class="clear"></div>
				</div>
				<div class="top_main">
					<h2>best sellers of the month</h2>
					<a href="#">show all</a>
					<div class="clear"></div>
				</div>
				<!-- start grids_of_3 -->
				<div class="grids_of_3">
					<div class="grid1_of_3">
						<a href="details?bookId=4"> <img src="images/books/think-java.jpg" alt="" />
								<h3>Java编程思想</h3> <span class="price">$91</span></a>
					</div>
					<div class="grid1_of_3">
						<a href="details?bookId=5"> <img src="images/books/junit.jpg" alt="" />
								<h3>Junit实战</h3> <span class="price">$62</span></a>
					</div>
					<div class="grid1_of_3">
						<a href="details?bookId=6"> <img src="images/books/core-java-1.jpg" alt="" />
								<h3>Java核心技术Ⅰ</h3> <span class="price">$95</span> <span
								class="price1 bg1">out of stock</span></a>
					</div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
				
				<!-- start grids_of_2 -->
				<div class="grids_of_2">
					<div class="grid1_of_2">
						<div class="span1_of_2">
							<h2>free shipping</h2>
							<p>Lorem Ipsum is simply dummy typesetting industry. Lorem
								Ipsum has been the industry's standard dummy text ever since the
								1500s, when an unknown printer took a galley of type and
								scrambled it to make a type specimen book.</p>
						</div>
						<div class="span1_of_2">
							<h2>testimonials</h2>
							<p>It is a long established fact that a reader will be
								distracted by the readable content of a page when looking at its
								layout. The point of using Lorem Ipsum is that it has a
								more-or-less normal distribution of letters, as opposed to using
								[...]</p>
						</div>
					</div>
					<div class="grid1_of_2 bg">
						<h2>blog news</h2>
						<div class="grid_date">
							<div class="date1">
								<h4>apr 01</h4>
							</div>
							<div class="date_text">
								<h4>
									<a href="#"> Donec vehicula est ac augue consectetur,</a>
								</h4>
								<p>There are many variations of passages of Lorem Ipsum
									available, but the majority have suffered alteration in some
									form</p>
							</div>
							<div class="clear"></div>
						</div>
						<div class="grid_date">
							<div class="date1">
								<h4>feb 01</h4>
							</div>
							<div class="date_text">
								<h4>
									<a href="#"> The standard chunk of Lorem Ipsum used since
										,,</a>
								</h4>
								<p>Contrary to popular belief, Lorem Ipsum is not simply
									random text. It has roots in a piece of classical Latin
									literature from</p>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
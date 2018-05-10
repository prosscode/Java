<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>主页</title>
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
		<!-- start slider -->
		<div class="slider">
			<!---start-image-slider---->
			<div class="image-slider">
				<div class="wrapper">
					<div id="ei-slider" class="ei-slider">
						<ul class="ei-slider-large">
							<li>
								<img src="images/banner1.jpeg" alt="image06" />
								<div class="ei-title">
									<h3 class="btn">仓央嘉措</h3>
									<!--<h2> <br>	2016 collections</h2>-->
									<h3 class="active">那一世  我翻遍十万大山  不修为来世<br />只为佑你平安喜乐
										<br />In the age,I overthousands of thousands of mountains<br />
											not to repair the afterlife，only for your peace of joy
                                </h3>
									
									<h3>
                                	<a class="ei_icons" href="details.html"><img src="images/icon_1.png" alt="" /></a>
                                	<a class="ei_icons" href="details.html"><img src="images/icon_2.png" alt="" /></a>
                                	<a class="ei_icons" href="details.html"><img src="images/icon_3.png" alt="" /></a>
                                	<a class="ei_icons" href="details.html"><img src="images/icon_4.png" alt="" /></a>
                                </h3>
								</div>
							</li>
							<li>
								<img src="images/banner2.jpeg" alt="image01" />
								<div class="ei-title">
									<h3 class="btn">苏轼</h3>
									<!--<h2>pink shoes <br>	2016 collections</h2>-->
									<h3 class="active">腹中诗书气自华  读书万卷始通神<br />
                                	Poetry in the stomach book from China,books pass through the beginning of God 
                                </h3>
									<h3>
                                	<a class="ei_icons" href="details.html"><img src="images/icon_1.png" alt="" /></a>
                                	<a class="ei_icons" href="details.html"><img src="images/icon_2.png" alt="" /></a>
                                	<a class="ei_icons" href="details.html"><img src="images/icon_3.png" alt="" /></a>
                                	<a class="ei_icons" href="details.html"><img src="images/icon_4.png" alt="" /></a>
                                </h3>
								</div>
							</li>
							<li>
								<img src="images/banner3.jpeg" alt="image02" />
								<div class="ei-title">
									<h3 class="btn">毛泽东</h3>
									<!--<h2>pink shoes <br>	2016 collections</h2>-->
									<h3 class="active">饭可以一日不吃 觉可以一日不睡 书不可一日不读<br />
                                	Do not read the book 
                                </h3>
									<h3>
                                	<a class="ei_icons" href="details.html"><img src="images/icon_1.png" alt="" /></a>
                                	<a class="ei_icons" href="details.html"><img src="images/icon_2.png" alt="" /></a>
                                	<a class="ei_icons" href="details.html"><img src="images/icon_3.png" alt="" /></a>
                                	<a class="ei_icons" href="details.html"><img src="images/icon_4.png" alt="" /></a>
                                </h3>
								</div>
							</li>
							<li>
								<img src="images/banner4.jpeg" alt="image03" />
								<div class="ei-title">
									<h3 class="btn">孟子</h3>
									<!--<h2>pink shoes <br>	2016 collections</h2>-->
									<h3 class="active">尽信书  则不如无书<br />
                                	Do not believe in books,it's better than no books
                                </h3>
									<h3>
                                	<a class="ei_icons" href="details.html"><img src="images/icon_1.png" alt="" /></a>
                                	<a class="ei_icons" href="details.html"><img src="images/icon_2.png" alt="" /></a>
                                	<a class="ei_icons" href="details.html"><img src="images/icon_3.png" alt="" /></a>
                                	<a class="ei_icons" href="details.html"><img src="images/icon_4.png" alt="" /></a>
                                </h3>
								</div>
							</li>
						</ul>
						<!-- ei-slider-large -->
						<ul class="ei-slider-thumbs">
							<li class="ei-slider-element">Current</li>
							<li>
								<a href="#">
									<span class="active">Peace</span>
								</a>
							</li>
							<li class="hide">
								<a href="#"><span>Love</span>
								</a>
							</li>
							<li class="hide1">
								<a href="#"><span>Faith</span>
								</a>
							</li>
							<li class="hide1">
								<a href="#"><span>Kind</span>
								</a>
							</li>
						</ul>
						<!-- ei-slider-thumbs -->
					</div>
					<!-- ei-slider -->
				</div>
				<!-- wrapper -->
			</div>
			<!---End-image-slider---->
		</div>
		<div class="top_bg">
			<div class="wrap">
				<div class="main1">
					<div class="image1_of_3">
						<img src="images/img1.jpeg" alt="" />
						<a href="#"><span class="tag">on sale</span></a>
					</div>
					<div class="image1_of_3">
						<img src="images/img3.jpeg" alt="" />
						<a href="#"><span class="tag">special offers</span></a>
					</div>
					<div class="image1_of_3">
						<img src="images/img2.jpeg" alt="" />
						<a href="#"><span class="tag">must have</span></a>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
		<!-- start main -->
		<div class="main_bg">
			<div class="wrap">
					
					<div class="clear"></div>
					<!-- start grids_of_2 -->
					<div class="grids_of_2">
						<div class="grid1_of_2">
							<div class="span1_of_2">
								<h2>free shipping</h2>
								<p>Lorem Ipsum is simply dummy typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
							</div>
							<div class="span1_of_2">
								<h2>testimonials</h2>
								<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using [...]</p>
							</div>
						</div>
						<div class="grid1_of_2 bg">
							<h2>blog news</h2>
							<div class="grid_date">
								<div class="date1">
									<h4>apr 01</h4>
								</div>
								<div class="date_text">
									<h4><a href="#"> Donec vehicula est ac augue consectetur,</a></h4>
									<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form</p>
								</div>
								<div class="clear"></div>
							</div>
							<div class="grid_date">
								<div class="date1">
									<h4>feb 01</h4>
								</div>
								<div class="date_text">
									<h4><a href="#"> The standard chunk of Lorem Ipsum used since ,,</a></h4>
									<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from </p>
								</div>
								<div class="clear"></div>
							</div>
						</div>
						<div class="clear"></div>
					</div>
				</div>
			</div>
			<jsp:include page="footer.jsp" />
</body>
</html>
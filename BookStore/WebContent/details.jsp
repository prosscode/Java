<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Details</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<!-- start details -->
<link rel="stylesheet" type="text/css" href="css/productviewgallery.css" media="all" />
<script type="text/javascript" src="js/cloud-zoom.1.0.3.min.js"></script>
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
<!-- start main -->
<div class="main_bg">
<div class="wrap">
<div class="main">
	<!-- start content -->
	<div class="single">
			<!-- start span1_of_1 -->
			<div class="left_content">
			<div class="span1_of_1">
				<!-- start product_slider -->
				<div class="product-view">
				    <div class="product-essential">
				        <div class="product-img-box">
				    <div class="more-views">
				        <div class="more-views-container">
				        <!--
				        	修改缩略图图标的地方
				        -->
				        <ul>
				            <li>
				            	<a class="cs-fancybox-thumbs" data-fancybox-group="thumb"  href=""  title="" alt="">
				            	<img src="" src_main=""  title="" alt="" /></a>            
				            </li>
				            <li>
				            	<a class="cs-fancybox-thumbs" data-fancybox-group="thumb" href=""  title="" alt="">
				            	<img src="" src_main=""  title="" alt="" /></a>
				            </li>
				            <li>
				            	<a class="cs-fancybox-thumbs" data-fancybox-group="thumb"  href=""  title="" alt="">
				            	<img src="" src_main=""  title="" alt="" /></a> 
				            </li>
				            <li>
				            	<a class="cs-fancybox-thumbs" data-fancybox-group="thumb" href=""  title="" alt="">
				            	<img src="" src_main="" title="" alt="" /></a>  
				            </li>
				            <li>
				            	<a class="cs-fancybox-thumbs" data-fancybox-group="thumb"  href=""  title="" alt="">
				            	<img src="" src_main="" title="" alt="" /></a>
				            </li>
				          </ul>
				        </div>
				    </div>
				   	<div class="product-image"> 
				   		
				   		<c:forEach var="book" items="${bookInfo}">
				   		
				        <a class="cs-fancybox-thumbs cloud-zoom" rel="adjustX:30,adjustY:0,position:'right',tint:'#202020',tintOpacity:0.5,smoothMove:2,showTitle:true,titleOpacity:0.5" data-fancybox-group="thumb" href="images/large/<c:out value="${book.bookURLL}" />.jpg" title="Details" alt="Details">
				           	<!--产品原图src地址-->
				           	<img src="images/small/<c:out value="${book.bookURLS}" />.jpg" alt="Details" title="Details" width="340px" height="340px"/>
				        </a>
				   </div>	   
				   
				   <!--
				   	修改放大镜和缩略图的地方 👇
				   -->
				</div>
				</div>
				</div>
			<!-- end product_slider -->
			</div>
			<!-- start span1_of_1 -->
			<div class="span1_of_1_des">
				  <div class="desc1">
				  
				  <h3><c:out value="${book.bookName}" /></h3>
				  
					<h5>$.<c:out value="${book.bookPrice}" /> <span><c:out value="${book.bookPriceold}" /></span>  <a href="#"><c:out value="${book.bookAuthor}" /></a></h5>
					<div class="available">
						<div class="btn_form">
						
						<span><c:out value="${book.bookInfo}" /></span>
						<div>&nbsp;</div>
						<!--添加到购物车,隐藏的input供传值使用-->
							<form action="addCart">
								<input type="hidden" name="bookId" value="${book.bookId}"></input>
								<input type="submit" value="Buy Now" title="" />
							</form>
							</div>
						</c:forEach>
					</div>
					
					
					
					<div class="share-desc">
						<div class="share">
							<h4>Share Product :</h4>
							<ul class="share_nav">
								<li><a href="#"><img src="images/facebook.png" title="facebook" /></a></li>
								<li><a href="#"><img src="images/twitter.png" title="Twiiter" /></a></li>
								<li><a href="#"><img src="images/rss.png" title="Rss" /></a></li>
								<li><a href="#"><img src="images/gpluse.png" title="Google+" /></a></li>
				    		</ul>
						</div>
						<div class="clear"></div>
					</div>
			   	 </div>
			   	</div>
			   	<div class="clear"></div>
			   	
			   	<!-- start left content_bottom -->
			   	<div class="left_content_btm">
			   		<!-- start tabs -->
				   	<section class="tabs">
		            <input id="tab-1" type="radio" name="radio-set" class="tab-selector-1" checked="checked" />
			        <label for="tab-1" class="tab-label-1">overview</label>
			
		            <input id="tab-2" type="radio" name="radio-set" class="tab-selector-2" />
			        <label for="tab-2" class="tab-label-2">consumer</label>
			
	          
				    <div class="clear-shadow"></div>
					
			        <div class="content">
				        <div class="content-1">
				        	<p class="para top"><span>LOREM IPSUM</span> There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined </p>
							<ul>
								<li>Research</li>
								<li>Design and Development</li>
								<li>Porting and Optimization</li>
								<li>System integration</li>
								<li>Verification, Validation and Testing</li>
								<li>Maintenance and Support</li>
							</ul>
							<div class="clear"></div>
						</div>
				        <div class="content-2">
							<p class="para"><span>WELCOME </span> Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections </p>
							<ul class="qua_nav">
								<li>Multimedia Systems</li>
								<li>Digital media adapters</li>
								<li>Set top boxes for HDTV and IPTV Player applications on various Operating Systems and Hardware Platforms</li>
							</ul>
						</div>
				        <div class="content-3">
				        	<p class="para top"><span>LOREM IPSUM</span> There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined </p>
							<ul>
								<li>Research</li>
								<li>Design and Development</li>
								<li>Porting and Optimization</li>
								<li>System integration</li>
								<li>Verification, Validation and Testing</li>
								<li>Maintenance and Support</li>
							</ul>
							<div class="clear"></div>
						</div>
			        </div>
			        </section>
		         	<!-- end tabs -->
			   	</div>
			   	<!-- end left content_bottom -->
		   	</div>
		<!-- start left_sidebar -->
			<div class="left_sidebar">
				<ul class="det_nav">
					<li><a href="#">accessories</a></li>
					<li><a href="#">safety and security</a></li>
					<li><a href="#">specials</a></li>
					<li><a href="#">accessories</a></li>
					<li><a href="#">new products</a></li>
					<li><a href="#">safety and security</a></li>
				</ul>
				<h4>recent products</h4>
				<div class="left_products">
					<div class="left_img">
						<img src="images/books/core-java-1.jpg" alt=""/>
					</div>
					<div class="left_text">
						<p><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</a></p>
						<span class="line">$72.00</span>
						<span>$52.00</span>
					</div>
					<div class="clear"></div>
				</div>
				<div class="left_products">
					<div class="left_img">
						<img src="images/books/java-net.jpg" alt=""/>
					</div>
					<div class="left_text">
						<p><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</a></p>
						<span class="line">$86.00</span>
						<span>$83.00</span>
					</div>
					<div class="clear"></div>
				</div>
				<div class="left_products">
					<div class="left_img">
						<img src="images/books/core-java-2.jpg" alt=""/>
					</div>
					<div class="left_text">
						<p><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</a></p>
						<span class="line">$76.00</span>
						<span>$75.00</span>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			
        <div class="clear"></div>
	       </div>	
	<!-- end content -->
	</div>
</div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>购物车</title>
<!-- For-Mobile-Apps -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>

<!-- Custom-Theme-Files -->
<link rel="stylesheet" href="css/cartStyle.css" type="text/css"
	media="all" />
<!-- //Custom-Theme-Files -->

<!-- Remove-Item-JavaScript -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script>
	$(document).ready(function(c) {
		$('.alert-close1').on('click', function(c) {
			$('.close1').fadeOut('slow', function(c) {
				$('.close1').remove();
			});
		});
	});
</script>
<!-- 计算总价 -->
	<script>
		$(document).ready(function() {
			$(".quantity1").find("input[class*=numberBook]").bind("input propertychange",function(){
				setTotal();
			})
			
			function setTotal(){
				var sum=0;
				/*each函数遍历相同的标签*/
				$(".close1").each(function(){
					var num = parseInt($(this).find("input").val());
					var price = parseFloat($(this).find(".pricebook").text());
				/* 	console.log(num);
					console.log(price); */
					sum+=num*price;
					/* console.log(sum); */
				});
				/*toFixed(2),保留两位小数*/
				$(".totalPrice").html(sum.toFixed(2));
			}
			
			setTotal();
		});
</script>
<!-- 结算点击事件，生成订单信息 -->
<script>
	$(document).ready(function(){
		$(".jiesuan").on("click",function(event){
			var total=$(".totalPrice").html();
			/* console.log(12345)
			console.log(total) */
			var pp="url2order?sale="
			pp+=total;
			$(".lianjie").attr("href",pp)
/* 			var ss=$(".lianjie").html();
			console(ss) */
		})
	});
</script>


<!-- //Remove-Item-JavaScript -->
</head>
<!-- Body-Starts-Here -->
<body>
	<h1>BookStore Cart</h1>
	<!-- Content-Starts-Here -->
	<div class="container">
		<!-- Mainbar-Starts-Here -->
		<div class="main-bar">
			<div class="product">
				<h3>商品</h3>
			</div>
			<div class="quantity">
				<h3>数量</h3>
			</div>
			<div class="price">
				<h3>单价</h3>
			</div>
			<div class="clear"></div>
		</div>
		<!-- //Mainbar-Ends-Here -->

		<!-- Items-Starts-Here -->
		<c:forEach var="item" items="${buyBookInfo}">
		<div class="items">
		
			<!-- Item1-Starts-Here -->
			<div class="item1">
				<div class="close1">
					<!-- Remove-Item -->
					<div class="alert-close1"><a><img src="images/cart/close1.png" alt="" /></a></div>
					<!-- //Remove-Item -->
					<div class="image1">
						<img src="images/small/${item.bookURLS}.jpg" alt="item1" width="75px" height="70px">
					</div>
					<div class="title1">
						<p>${item.bookName }</p>
					</div>
					<div class="quantity1">
						<form action="action_page.php">
							<input class="numberBook" type="number" name="quantity" min="1" max="10" value="1">
						</form>
					</div>
					<div class="price1">
						<p><span>$</span><span class="pricebook">${item.bookPrice }</span></p>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
		</c:forEach>
		<!-- //Items-Ends-Here -->
		
		<!-- Total-Price-Starts-Here -->
		<div class="total">
			<div class="total1">总价</div>
			<div class="total2"><span>$</span><span class="totalPrice"></span></div>
			<div class="clear"></div>
		</div>
		<!-- //Total-Price-Ends-Here -->

		<!-- Checkout-Starts-Here -->
		<div class="checkout">
			<div class="discount">
				<span>输入优惠券</span> <input type="text">
			</div>
			<div class="add">
				<a href="books.jsp">返回继续选购书籍</a>
			</div>
			<div class="checkout-btn">
				<a href="" class="lianjie"><span class="jiesuan">结算</span></a>
			</div>
			<div class="clear"></div>
		</div>
		<!-- //Checkout-Ends-Here -->

	</div>
	<!-- Content-Ends-Here -->

	<!-- Copyright-Starts-Here -->
	<div class="copyright">
		<p>
			 Copyright &copy; 2018, All Rights Reserved.
		</p>
		<p>出版物经营许可证 新出发京批字第直0673号 | 京公网安备110101000001号</p>
	</div>
	<!-- //Copyright-Ends-Here -->

</body>
<!-- Body-Ends-Here -->

</html>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>footer</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

	<link rel="stylesheet" href="css/animate.css" />
	<link rel="stylesheet" href="css/styleone.css" />
</head>
<body>
	<div class="footer_bg">
		<div class="wrap">
			<div class="footer">
				<!-- scroll_top_btn -->
 				<script type="text/javascript">
					$(document).ready(function() {

						var defaults = {
							containerID : 'toTop', // fading element id
							containerHoverID : 'toTopHover', // fading element hover id
							scrollSpeed : 1200,
							easingType : 'linear'
						};

						$().UItoTop({
							easingType : 'easeOutQuart'
						});

					});
				</script>
				<a href="#" id="toTop" style="display: block;"><span
					id="toTopHover" style="opacity: 1;"></span></a>
				<!--end scroll_top_btn -->
			<div class="row" style="padding-top: 5px; clear: both;">
				<div class="col-md-12 text-center"><p><small>Copyright &copy; 2018, All Rights Reserved.<br />出版物经营许可证 新出发京批字第直0673号  | 京公网安备110101000001号</small></p></div>
			</div>
				<div class="copy">
					<p class="link"></p>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>


</body>
</html>
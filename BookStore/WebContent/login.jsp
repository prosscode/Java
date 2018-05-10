<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Login</title>
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/animate.css"/>
	<link rel="stylesheet" href="css/styleone.css" />
	<script src="js/modernizr-2.6.2.min.js"></script>
</head>
<body class="style-2">

	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<ul class="menu">
				</ul>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<!-- Start Sign In Form -->
				<form action="login" method="post" class="fh5co-form animate-box" data-animate-effect="fadeInLeft">
					<h2>Sign In</h2>
					<div class="form-group">
						<label for="username" class="sr-only">Username</label> 
						<input type="text" class="form-control" id="username" name="username"
							placeholder="Username" autocomplete="off" />
					</div>
					<div class="form-group">
						<label for="password" class="sr-only">Password</label> 
						<input type="password" class="form-control" id="password"
							name="password" placeholder="Password" autocomplete="off" />
					</div>
					<div class="form-group">
						<label for="remember"><input type="checkbox" id="remember" />
								Remember Me</label>
					</div>
					<div class="form-group">
						<p>
							Not registered? <a href="register.jsp">Register</a> | <a
								href="forgot.jsp">Forgot Password?</a>
						</p>
					</div>
					<div class="form-group">
						<input type="submit" value="Login" class="btn btn-primary" />
						<span>&nbsp;&nbsp;&nbsp;&nbsp;${msg}</span>
					</div>
				</form>
				<!-- END Sign In Form -->
			</div>
		</div>
		<div class="row" style="padding-top: 320px; clear: both;">
			<div class="col-md-12 text-center">
				<p>
					<small>Copyright &copy; 2018, All Rights Reserved.<br />出版物经营许可证
						新出发京批字第直0673号 | 京公网安备110101000001号
					</small>
				</p>
			</div>
		</div>
	</div>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Placeholder -->
	<script src="js/jquery.placeholder.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>

</body>
</html>